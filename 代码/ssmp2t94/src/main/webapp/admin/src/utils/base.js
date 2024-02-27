const base = {
    get() {
        return {
            url : "http://localhost:8080/ssmp2t94/",
            name: "ssmp2t94",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssmp2t94/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "校园二手交易平台小程序"
        } 
    }
}
export default base
