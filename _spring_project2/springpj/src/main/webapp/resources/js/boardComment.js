async function postCommentToServer(cmtData){

    try{
        const url = '/comment/post';
        const config = {
            method:"post",
            headers:{
                'Content-Type':'application/json; charset=utf-8'
            },
            body:JSON.stringify(cmtData)
        }
        const resp = await fetch(url, config);
        const result = await resp.text(); //isOk
        return result;

    }catch(err){
        console.log(err);
    }
}

document.getElementById('cmtPostBtn').addEventListener('click', ()=>{
    const cmtText = document.getElementById('cmtText').value;
   
    console.log(cmtText);
    if(cmtText=="" || cmtText==null){
        alert("댓글을 입력해주세요");
        document.getElementById('cmtText').focus();
        return false;
    }else{
        let cmtData = {
            bno : bnoVal,
            writer : document.getElementById('cmtWriter').innerText,
            content : cmtText
        };
        console.log(cmtData);
        postCommentToServer(cmtData).then(result => {
            //여기서 받는 값은 isOk 잘 들어갔는지 확인 데이터
            if(result > 0){
                alert("댓글을 등록했습니다.");
                getCommentList(cmtData.bno);
            }
        })
    }

})

async function spreadCommentFromServer(bno){
	console.log(bno);
	try{
		const resp = await fetch('/comment/'+bno);
		const result = await resp.json();
		return result;
	}catch(err){
		console.log(err);
	}
	
}

function getCommentList(bno){
    spreadCommentFromServer(bno).then(result =>{
        console.log(result);
        const ul = document.getElementById('cmtListArea');
        if(result?.length > 0){
            ul.innerHTML = "";
            for(let cvo of result){
                let li = `<li data-cno="${cvo.cno}"><div>`;
                li += `<div>${cvo.writer}</div>`;
                li += `<input type="text" id="cmtTextMod" value=" ${cvo.content}"></div>`;
                li += `<span>${cvo.mod_date}<span>`;
                li += `<button type="button"  class="modBtn btn btn-outline-dark" >%</button>`;
                li += `<button type="button" class="delBtn">X</button></li>`;
                ul.innerHTML+=li;
            }
        }else{
            let li = `<li>Comment List Empty </li>`;
        }
    })
}

// 중복으로 들어가는건데 처리는 잘 된다.
async function editCommentToServer(cmtDataMod){
    try{
        const url ='/comment/'+cmtDataMod.cno;
        const config={
            method:'PUT',
            headers:{
                'Content-type':'application/json; charset=utf-8'

            },
            body:JSON.stringify(cmtDataMod)
        };
        const resp = await fetch(url, config);
        const result = await resp.text();
        return result;
    }catch(err){
        console.log(err);
    }
}

async function removeCommentToServer(cno){
    try{
        const url = '/comment/'+cno;
        const config={
            method:'delete'
        };
        const resp = await fetch(url, config);
        const result = await resp.text();
        return result;
    }catch(err){
        console.log(err);
    }
}

document.addEventListener('click', (e)=>{
    console.log(e.target);
    if(e.target.classList.contains('modBtn')){
        console.log("수정버튼 클릭시");

        // 내가 클릭한 버튼의 댓글 목록
        let li = e.target.closest('li');
        let cnoVal = li.dataset.cno;
    let textContent = li.querySelector('#cmtTextMod').value;

        // 잘 나오는지 한번 찍어보기
        console.log("cno / content > "+ cnoVal +" "+ textContent);

        let cmtDataMod={
            cno:cnoVal,
            content: textContent
        };

        console.log(cmtDataMod);

        //서버연결
        editCommentToServer(cmtDataMod).then(result=>{
            if(result>0){
                alert('댓글 수정 성공!');
            }
            getCommentList(bnoVal);
        })

    }else if(e.target.classList.contains('delBtn')){
        console.log("삭제버튼 클릭시");
        let li = e.target.closest('li');
        let cnoVal = li.dataset.cno;
        console.log(cnoVal);
        removeCommentToServer(cnoVal).then(result =>{
            if(result > 0){
                alert('댓글 삭제 성공');
            }
            getCommentList(bnoVal);
        })
    }


})

