"use strict";(self["webpackChunkfront_end"]=self["webpackChunkfront_end"]||[]).push([[974],{557:function(e,t,a){a.r(t),a.d(t,{default:function(){return u}});var n=function(){var e=this,t=e._self._c;return t("div",[t("div",{staticClass:"col-md-8"},[t("div",{staticClass:"input-group mb-3"},[t("div",{staticClass:"col-2"},[t("select",{directives:[{name:"model",rawName:"v-model",value:e.searchSelect,expression:"searchSelect"}],staticClass:"form-select",on:{change:function(t){var a=Array.prototype.filter.call(t.target.options,(function(e){return e.selected})).map((function(e){var t="_value"in e?e._value:e.value;return t}));e.searchSelect=t.target.multiple?a:a[0]}}},[t("option",[e._v("question")]),t("option",[e._v("questioner")])])]),t("div",{staticClass:"col-9"},[t("input",{directives:[{name:"model",rawName:"v-model",value:e.searchKeyword,expression:"searchKeyword"}],staticClass:"form-control",attrs:{type:"text",placeholder:"Search by Question"},domProps:{value:e.searchKeyword},on:{input:function(t){t.target.composing||(e.searchKeyword=t.target.value)}}})]),t("div",{staticClass:"input-group-append col-1"},[t("button",{staticClass:"btn btn-outline-secondary",attrs:{type:"button"},on:{click:function(t){e.page=1,e.retrieveQna()}}},[e._v(" Search ")])])])]),t("div",{staticClass:"col-md-12"},[t("div",{staticClass:"mb-3"},[e._v(" Items per Page: "),t("select",{directives:[{name:"model",rawName:"v-model",value:e.pageSize,expression:"pageSize"}],on:{change:[function(t){var a=Array.prototype.filter.call(t.target.options,(function(e){return e.selected})).map((function(e){var t="_value"in e?e._value:e.value;return t}));e.pageSize=t.target.multiple?a:a[0]},function(t){return e.handlePageSizeChange(t)}]}},e._l(e.pageSizes,(function(a){return t("option",{key:a,domProps:{value:a}},[e._v(" "+e._s(a)+" ")])})),0)]),t("b-pagination",{attrs:{"total-rows":e.count,"per-page":e.pageSize,"prev-text":"Prev","next-text":"Next"},on:{change:e.handlePageChange},model:{value:e.page,callback:function(t){e.page=t},expression:"page"}})],1),t("table",{staticClass:"table"},[e._m(0),e._l(e.qna,(function(a,n){return t("tbody",{key:n},[t("tr",[t("td",[e._v(e._s(a.question))]),t("td",[e._v(e._s(a.questioner))]),t("td",[e._v(e._s(a.answer))]),t("td",[e._v(e._s(a.answerer))]),t("td",[t("router-link",{attrs:{to:"/qna/"+a.qno}},[t("span",{staticClass:"badge bg-success"},[e._v("Edit")])])],1)])])}))],2)])},r=[function(){var e=this,t=e._self._c;return t("thead",[t("tr",[t("th",{attrs:{scope:"col"}},[e._v("Question")]),t("th",{attrs:{scope:"col"}},[e._v("Questioner")]),t("th",{attrs:{scope:"col"}},[e._v("Answer")]),t("th",{attrs:{scope:"col"}},[e._v("Answerer")])])])}],s=a(3298),o={data(){return{qna:[],searchKeyword:"",searchSelect:"question",page:1,count:0,pageSize:3,pageSizes:[3,6,9]}},methods:{retrieveQna(){s.Z.getAll(this.searchSelect,this.searchKeyword,this.page-1,this.pageSize).then((e=>{const{qna:t,totalItems:a}=e.data;this.qna=t,this.count=a,console.log(e.data)})).catch((e=>{console.log(e)}))},handlePageSizeChange(e){this.pageSize=e.target.value,this.page=1,this.retrieveQna()},handlePageChange(e){this.page=e,this.retrieveQna()}},mounted(){this.retrieveQna()}},l=o,i=a(1001),c=(0,i.Z)(l,n,r,!1,null,null,null),u=c.exports},3298:function(e,t,a){var n=a(6645);class r{getAll(e,t,a,r){return n.Z.get(`/qna?searchSelect=${e}&searchKeyword=${t}&page=${a}&size=${r}`)}get(e){return n.Z.get(`/qna/${e}`)}create(e){return console.log(e),n.Z.post("/qna",e)}update(e,t){return n.Z.put(`/qna/${e}`,t)}delete(e){return n.Z["delete"](`/qna/deletion/${e}`)}deleteAll(){return n.Z["delete"]("/qna/all")}}t["Z"]=new r}}]);
//# sourceMappingURL=974.df9164ae.js.map