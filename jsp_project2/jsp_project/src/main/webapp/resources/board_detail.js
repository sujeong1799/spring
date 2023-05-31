//화면에서 등록한 댓글 내용을 컨트롤러로 전송 -> DB 저장
// function에 async 붙인건 비동기함수라는 뜻임.
async function postCommentToServer(cmtData) {
	try {
		/*url뒤에 config 붙여서 보내줄거야*/
		const url = "/cmt/post";
		const config = {
			method: 'post',
			headers: {
				// 설정값 
				'content-Type': 'application/json; charset=utf-8'
			},
			body: JSON.stringify(cmtData)
		};

		// 응답 받고자 하는 데이터 두개담아서 보내줄게
		// fetch 함수를 사용해서 서버에 요청을 전송
		// await => 응답이 올때까지 기다리는 역할
		const resp = await fetch(url, config);
		const result = await resp.text(); // isOK 컨트롤러에 보내는 결과 잘됐으면 1 안됐으면 0
		return result;
	} catch (error) {
		console.log(error);
	}

}

// 미리 보낼 데이터를 만들어서 함수로 전달 cmtData
document.getElementById('cmtAddBtn').addEventListener('click', () => {
	const cmtText = document.getElementById('cmtText').value;
	console.log(cmtText);
	if (cmtText == null || cmtText == "") {
		alert('댓글을 입력해주세요');
		return false;
	} else {
		let cmtData = {
			bno: bnoVal,
			writer: document.getElementById('cmtWriter').value,
			content: cmtText
		};
		postCommentToServer(cmtData).then(result => {
			if (result > 0) {
				alert('댓글 등록 성공!!');
				// 등록 후 cmtText에 남아있는거 날리기
				document.getElementById('cmtText').value = "";
			}
			// 댓글 표시
			printCommentList(cmtData.bno);
		})
	}
})

// 댓글 가져오기
//컨트롤러에 가서 bno를 주고 bno에 해당하는 댓글 리스트 달라고 요청
// get방식
async function getCommentListFromServer(bno) {
	try {

		// 데이터가 controller로 이동한 후 컨트롤러 처리를 하고 응답데이터를 가져와서 resp에 저장


		const resp = await fetch('/cmt/list/' + bno); //  cmt/list/1
		const cmtList = await resp.json(); // 댓글 객체가 리턴
		return cmtList;

	} catch (error) {
		console.log(error);
	}
}

// 임시호출
// result == cmtList 이름을 뭘로 받던지 상관없음.
// 통신 완료 후 가져온 리스트를 콘솔에 찍어본 작업
function printCommentList(bno) {

	getCommentListFromServer(bno).then(result => { // 아까는 바로 뿌릴꺼라서 bnoVal로 받았지만 호출해서 하는거면 bno로 받아
		console.log(result);
		if (result.length > 0) { // length가 0보다 커야 등록된 댓글이 있다는 뜻.
			spreadCommentList(result);
		} else {
			let div = document.getElementById('accordionFlushExample');
			div.innerText = "comment가 없습니다.";
		}

	})
}



function spreadCommentList(result) { // 여기 들어가는건 댓글 List
	console.log(result);
	let div = document.getElementById('accordionFlushExample'); // 전체 div는 그대로 있고 나머지 div만 반복해야함
	div.innerHTML = ""; // 밑에 div 값을 다 날려 > 댓글이 여러개면 이걸 반복해야함
	for (let i = 0; i < result.length; i++) {
		let html = `<div class="accordion-item">`;
		html += `<h2 class="accordion-header" id="flush-heading${i}">`; // one을 지우고 ${i} 추가
		html += `<button class="accordion-button collapsed" type="button"
					data-bs-toggle="collapse" `;
		html += `data-bs-target="#flush-collapse${i}";
					aria-expanded="false" aria-controls="flush-collapse${i}">`;
		html += `${result[i].cno}, ${result[i].writer} </button></h2> `;
		html += `<div id="flush-collapse${i}" class="accordion-collapse collapse"`;
		html += `aria-labelledby="flush-heading${i}"
				data-bs-parent="#accordionFlushExample">`;
		html += `<div class="accordion-body">`;
		html += `<button type="button" data-cno="${result[i].cno}" data-writer="${result[i].writer}" class="btn btn-sm btn-outline-success cmtModBtn">%</button>`;
		html += `<button type="button" data-cno="${result[i].cno}" class="btn btn-sm btn-outline-danger cmtDelBtn">X</button>`;
		html += `<input type="text" class="form-control" id="cmtText1" value="${result[i].content}">`;
		html += `${result[i].reg_date}`;
		html += `</div></div></div>`;
		div.innerHTML += html; // 누적해서 담기
	}
}

async function removeCommentfromServer(cnoVal){
	try{
		const url = '/cmt/remove?cnoVal='+cnoVal;
		const config = {
			method:'post'
		}
		const resp = await fetch(url, config);
		const result = await resp.text();
		return result;
	}catch(error){
		console.log(error);
	}
}

async function updateCommentFromServer(cnoVal, cmtText1, writer){
	try{
		const url = "/cmt/modify";
		const config = {
			method:'post',
			headers: {
				'content-Type': 'application/json; charset=utf-8'
			},
			body: JSON.stringify({cno:cnoVal, content:cmtText1, writer:writer})
		}
		const resp = await fetch(url, config);
		const result = await resp.text(); // isOk가 온다.
		return result;
	}catch(error){
		console.log(error);	
	}
}

// 내가 클릭한 객체를 e로 받는다.
document.addEventListener('click', (e)=>{
	if(e.target.classList.contains('cmtModBtn')){
		//수정작업
		let cnoVal = e.target.dataset.cno;
		console.log(cnoVal);
		// 기존 위치에서 값을 읽어들여 내용을 DB에 저장 한 후 변경
		// 현재 수정하고자 하는 값 input box의 value 값을 찾기위한 작업
		let div = e.target.closest('div'); // closest => 타켓을 기준으로 가장 가까운 값 찾기
		let cmtText1 = div.querySelector('#cmtText1').value;
		let writer = e.target.dataset.writer;
		
		// 비동기 통신 호출
		updateCommentFromServer(cnoVal, cmtText1, writer).then(result=>{
			if(result>0){
				alert('댓글 수정 완료');
				console.log(result);
				printCommentList(bnoVal);
			}else{
				alert('댓글 수정불가!');
			}
		})
	}
	if(e.target.classList.contains('cmtDelBtn')){
		//삭제작업	
		let cnoVal = e.target.dataset.cno;
		console.log(cnoVal);
		removeCommentfromServer(cnoVal).then(result =>{
			if(result > 0){
				alert('댓글 삭제 완료!!');
				printCommentList(bnoVal);
				console.log(bnoVal);
			}
		})
	}
})
