G_DEPlugin["customformatting"].config = {

    /*
        defaultTitle : 콤보박스에 표시되는 타이틀 | 적용할 언어, 적용 타이틀 입니다.

        name : 콤보박스 서식리스트에 표현되는 이름 | 적용할 언어, 적용 이름 입니다.
        style : 해당 서식 사용시 적용할 style 값을 설정합니다.
        styleType 
            inline : p태그에 style값 적용, 기존 style 유지
            block : span태그에 style 적용, 기존 style 제거, 선택된 영역만 style 적용가능

        formattingList 배열에 설정값이 없을 시 에디터 툴바에 생성되지 않습니다.
    */

    setting: {
        defaultTitle: {
            'ko-kr': '커스텀',
            'en-us': 'Custom Format'
        },
        formattingList: [
            /*{
                name: {
                    'ko-kr': '첫번째 서식',
                    'en-us': 'First Format'
                },
                style: 'font-size: 20pt; font-family: 궁서;',
                styleType: 'block'
            },
            {
                name: {
                    'ko-kr': '두번째 서식',
                    'en-us': 'Second Format'
                },
                style: 'font-size: 15pt; font-family: 바탕; font-weight: bold',
                styleType: 'inline'
            }*/
        ]
    }
}