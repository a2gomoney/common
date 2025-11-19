// 페이지 로드 완료 후 실행
document.addEventListener('DOMContentLoaded', function() {
    console.log('DEVOPS Spring Boot Application 로드됨');
    
    // 애니메이션 효과를 위한 요소들 선택
    const welcomeSection = document.querySelector('.welcome-section');
    const infoSection = document.querySelector('.info-section');
    const listItems = document.querySelectorAll('.info-section li');
    
    // 페이지 로드 애니메이션
    if (welcomeSection) {
        welcomeSection.style.opacity = '0';
        welcomeSection.style.transform = 'translateY(30px)';
        
        setTimeout(() => {
            welcomeSection.style.transition = 'all 0.6s ease';
            welcomeSection.style.opacity = '1';
            welcomeSection.style.transform = 'translateY(0)';
        }, 200);
    }
    
    if (infoSection) {
        infoSection.style.opacity = '0';
        infoSection.style.transform = 'translateY(30px)';
        
        setTimeout(() => {
            infoSection.style.transition = 'all 0.6s ease';
            infoSection.style.opacity = '1';
            infoSection.style.transform = 'translateY(0)';
        }, 400);
    }
    
    // 리스트 아이템들 순차적으로 나타나기
    listItems.forEach((item, index) => {
        item.style.opacity = '0';
        item.style.transform = 'translateX(-30px)';
        
        setTimeout(() => {
            item.style.transition = 'all 0.4s ease';
            item.style.opacity = '1';
            item.style.transform = 'translateX(0)';
        }, 600 + (index * 100));
    });
    
    // 버튼 클릭 효과
    const buttons = document.querySelectorAll('.btn');
    buttons.forEach(button => {
        button.addEventListener('click', function(e) {
            // 클릭 애니메이션
            this.style.transform = 'scale(0.95)';
            setTimeout(() => {
                this.style.transform = 'translateY(-3px)';
            }, 100);
        });
    });
    
    // 현재 시간 표시 (선택사항)
    const currentTime = new Date().toLocaleString('ko-KR');
    console.log('현재 시간:', currentTime);
});

// 페이지 상태 확인 함수
function checkPageStatus() {
    console.log('페이지 상태 확인 중...');
    console.log('Spring Boot 애플리케이션이 정상적으로 동작 중입니다.');
}

// WebSquare 관련 함수 (필요시 확장)
function initializeWebSquare() {
    console.log('WebSquare 초기화 준비 중...');
    // WebSquare 관련 초기화 코드가 여기에 들어갑니다
}

// 5초 후 상태 확인
setTimeout(checkPageStatus, 5000);