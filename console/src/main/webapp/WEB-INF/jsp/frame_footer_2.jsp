<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/08/30
  Time: 6:02 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

</div>

<!-- Overlay -->
<div class="layout-overlay layout-sidenav-toggle"></div>
</div>
<!-- / Layout wrapper -->

<!-- Core scripts -->
<script src="<%=request.getContextPath()%>/static/assets/vendor/libs/popper/popper.js"></script>
<script src="<%=request.getContextPath()%>/static/assets/vendor/js/bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/static/assets/vendor/js/sidenav.js"></script>

<!-- Libs -->
<script src="<%=request.getContextPath()%>/static/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>


<script src="<%=request.getContextPath()%>/static/assets/vendor/libs/chartjs/chartjs.js"></script>


<script src="<%=request.getContextPath()%>/static/assets/vendor/libs/moment/moment.js"></script>


<script src="<%=request.getContextPath()%>/static/assets/vendor/libs/bootstrap-datepicker/bootstrap-datepicker.js"></script>

<!-- Demo -->
<script src="<%=request.getContextPath()%>/static/assets/vendor/libs/flot/flot.js"></script>

<script src="<%=request.getContextPath()%>/static/assets/js/demo.js"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/charts_flot.js"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/dashboards_dashboard-2.js"></script>

<script src="<%=request.getContextPath()%>/static/assets/js/pages_articles_list.js"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/forms_pickers.js"></script>
<script src="<%=request.getContextPath()%>/static/assets/vendor/libs/fullcalendar/fullcalendar.js"></script>
<script>
    $(function() {
        var isRtl = $('html').attr('dir') === 'rtl';
        $('#datepicker-start').datepicker({
            orientation: isRtl ? 'auto right' : 'auto left'
        });
        $('#datepicker-end').datepicker({
            orientation: isRtl ? 'auto right' : 'auto left'
        });
    });

    $('#modals-default').on('show.modal', function () {
        $('#datepicker-start').datepicker({
            orientation: isRtl ? 'auto right' : 'auto left'
        });
        $('#datepicker-end').datepicker({
            orientation: isRtl ? 'auto right' : 'auto left'
        });
    });

    $(function(){
        var sBtn = $("ul > li");    //  ul > li 이를 sBtn으로 칭한다. (클릭이벤트는 li에 적용 된다.)
        sBtn.find("a").click(function(){   // sBtn에 속해 있는  a 찾아 클릭 하면.
            sBtn.removeClass("active");     // sBtn 속에 (active) 클래스를 삭제 한다.
            $(this).parent().addClass("active"); // 클릭한 a에 (active)클래스를 넣는다.
        });
    });

    //최초 진입시 호출되는 ajax 페이지 초기값
    var cur = "";
    function load(a,b){
        console.log("cur = "+cur + "   load="+a);

        if(cur!=a){
            cur = a;
            var state = {'url':a};
            var title = b;
            //var url = a;
            history.pushState(state, title);
            $("#contents").load(a,{"tag":a} ,function(){
                //alert(a);
            });
        }else{//현재 주소 클릭시 변화 없음

            return;
        }
    }
    //문서 로드 완료 후 이벤트 처리
    (function() {
        // There's nothing to do for older browsers ;)
        if (!window.addEventListener)
            return;
        //window 내 mouse 위치 여부를 체크하기 위한 변수
        window.innerDoc = false; //mouseover Event Listener
        window.addEventListener('mouseover', function(event) { window.innerDoc = true; });
        // mouseout Event Listener
        window.addEventListener('mouseout', function(event) { window.innerDoc = false; });

        var blockPopstateEvent = document.readyState!="complete";
        window.addEventListener("load", function() {
            // The timeout ensures that popstate-events will be unblocked right
            // after the load event occured, but not in the same event-loop cycle.
            setTimeout(function(){ blockPopstateEvent = false; }, 0);
        }, false);
        window.addEventListener("popstate", function(evt) {
            if (blockPopstateEvent && document.readyState=="complete") {
                evt.preventDefault();
                evt.stopImmediatePropagation();
            }
            if (!window.innerDoc) {

                $("#contents").load(evt.state.url,{"tag":evt.state.url} ,function(){
                    //alert(a);
                    //lng 하이라이트 바꿔줘야 함
                });
            }
        }, false);
    })();

</script>

