G_DEPlugin["selectedcontent"].config = {

    /*
        selectedcontent 사용시 추가메뉴를 활성화 하는 설정입니다.
        * use : true 일 때, 추가메뉴를 활성화 합니다.

        * menuList : 추가메뉴에서 보여줄 리스트입니다.
            - 리스트 하나당 { command: "", name: {'ko-kr': ""} } 형태로 추가해 주시면 됩니다.
            - command : 추가메뉴에 대한 key 값입니다. 
            - name : 추가메뉴 리스트에 보여줄 이름으로 적용할 언어, 적용 이름 입니다.
    */
    expandMenuList: {
        use: false,
        menuList: [
            {
                command: 'Menu1',
                name: {
                    'ko-kr': '첫번째 메뉴',
                    'en-us': 'First Menu'
                }
            },
            {
                command: 'Menu2',
                name: {
                    'ko-kr': '두번째 메뉴',
                    'en-us': 'Second Menu'
                }
            },
            {
                command: 'Menu3',
                name: {
                    'ko-kr': '세번째 메뉴',
                    'en-us': 'Third Menu'
                }
            }
        ]
    }
};