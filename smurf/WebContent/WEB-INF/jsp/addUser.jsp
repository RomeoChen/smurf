<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%-- <base href="<%=basePath%>smurf"> --%>
    <title>register</title>
    <script type="text/javascript" src="../../js/citySelect.js"></script>
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
    <script src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
     <!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous"> -->

</head>
<body onload="init()">
<div data-role="page" id="page1">
    <div data-role="header">
        <h1>人员信息录入</h1>
    </div>
    <div role="main" class="ui-content">
        <form id="form1" action="#" method="post" onsubmit="return check()">
            <div class="ui-field-contain">
                <label for="text-1">姓名</label>
                <input type="text" data-clear-btn="true" name="name" id="text-1" value="" onblur="checkName()">
                <div id="name_prompt"></div>
            </div>
            <div class="ui-field-contain">
                            <fieldset data-role="controlgroup" data-type="horizontal" data-mini="true">
                              <legend>性别</legend>
                                <input type="radio" name="sex" id="radio-choice-1a" value="男" >
                                <label for="radio-choice-1a">男</label>
                                <input type="radio" name="sex" id="radio-choice-1b" value="女">
                                <label for="radio-choice-1b">女</label>
            </fieldset>
            </div>
            <div class="ui-field-contain">
                            <fieldset data-role="controlgroup" data-type="horizontal" data-mini="true">
                              <legend>婚姻情况</legend>
                                <input type="radio" name="marriage" id="radio-choice-2a" value="已婚" >
                                <label for="radio-choice-2a">已婚</label>
                                <input type="radio" name="marriage" id="radio-choice-2b" value="未婚">
                                <label for="radio-choice-2b">未婚</label>
            </fieldset>
            </div>
            <div class="ui-field-contain">
                <label for="nation">民族</label>
                <select data-mini="true" name="nation" id="nation">
                    <option selected="selected" value="0">-请选择-</option>
                    <option value="汉族">汉族</option>
                    <option value="蒙古族">蒙古族</option>
                    <option value="回族">回族</option>
                    <option value="藏族">藏族</option>
                    <option value="维吾尔族">维吾尔族</option>
                    <option value="苗族">苗族</option>
                    <option value="彝族">彝族</option>
                    <option value="壮族">壮族</option>
                    <option value="布依族">布依族</option>
                    <option value="朝鲜族">朝鲜族</option>
                    <option value="满族">满族</option>
                    <option value="侗族">侗族</option>
                    <option value="瑶族">瑶族</option>
                    <option value="白族">白族</option>
                    <option value="土家族">土家族</option>
                    <option value="哈尼族">哈尼族</option>
                    <option value="哈萨克族">哈萨克族</option>
                    <option value="傣族">傣族</option>
                    <option value="黎族">黎族</option>
                    <option value="傈僳族">傈僳族</option>
                    <option value="佤族">佤族</option>
                    <option value="畲族">畲族</option>
                    <option value="高山族">高山族</option>
                    <option value="拉祜族">拉祜族</option>
                    <option value="水族">水族</option>
                    <option value="东乡族">东乡族</option>
                    <option value="纳西族">纳西族</option>
                    <option value="景颇族">景颇族</option>
                    <option value="柯尔克孜族">柯尔克孜族</option>
                    <option value="土族">土族</option>
                    <option value="达斡尔族">达斡尔族</option>
                    <option value="仫佬族">仫佬族</option>
                    <option value="羌族">羌族</option>
                    <option value="布朗族">布朗族</option>
                    <option value="撒拉族">撒拉族</option>
                    <option value="毛南族">毛南族</option>
                    <option value="仡佬族">仡佬族</option>
                    <option value="锡伯族">锡伯族</option>
                    <option value="阿昌族">阿昌族</option>
                    <option value="普米族">普米族</option>
                    <option value="塔吉克族">塔吉克族</option>
                    <option value="怒族">怒族</option>
                    <option value="乌孜别克族">乌孜别克族</option>
                    <option value="俄罗斯族">俄罗斯族</option>
                    <option value="鄂温克族">鄂温克族</option>
                    <option value="德昂族">德昂族</option>
                    <option value="保安族">保安族</option>
                    <option value="裕固族">裕固族</option>
                    <option value="京族">京族</option>
                    <option value="塔塔尔族">塔塔尔族</option>
                    <option value="独龙族">独龙族</option>
                    <option value="鄂伦春族">鄂伦春族</option>
                    <option value="赫哲族">赫哲族</option>
                    <option value="门巴族">门巴族</option>
                    <option value="珞巴族">珞巴族</option>
                    <option value="基诺族">基诺族</option>
                </select>
            </div>

            <div class="ui-field-contain">
                <label for="birth">出生年月</label>
                <input type="month" name="birth" id="birth"/>
            </div>

            <div class="ui-field-contain">
                 <label for="idnumber">身份证号</label>
                 <input type="text" name="idNumber" id="idnumber" value="">
            </div>
            <div class="ui-field-contain">
                            <fieldset data-role="controlgroup" data-type="horizontal" data-mini="true">
                              <legend>政治面貌</legend>
                                <input type="radio" name="politicalStatus" id="radio-choice-3a" value="党员" >
                                <label for="radio-choice-3a">党员</label>
                                <input type="radio" name="politicalStatus" id="radio-choice-3b" value="团员">
                                <label for="radio-choice-3b">团员</label>
                <input type="radio" name="politicalStatus" id="radio-choice-3c" value="群众">
                                <label for="radio-choice-3c">群众</label>
            </fieldset>
            </div>
            <div class="ui-field-contain">
                 <label for="origin-place">籍贯</label>
                 <input name="originPlace" id="origin-place">
            </div>
            <div class="ui-field-contain">
                <fieldset data-role="controlgroup" data-type="horizontal" data-mini="true">
                                  <legend>户口性质</legend>
                                    <input type="radio" name="residence" id="radio-choice-4a" value="城市" >
                                    <label for="radio-choice-4a">城市</label>
                                    <input type="radio" name="residence" id="radio-choice-4b" value="农村">
                                    <label for="radio-choice-4b">农村</label>
                </fieldset>
            </div>

            <div class="ui-field-contain">
                <fieldset data-role="controlgroup" data-type="horizontal" data-mini="true">
                    <legend>现居住地</legend>
                    <label for="province">省</label>
                    <select name="province" id="province" onchange="provincechange(this.selectedIndex)">
                        <option>请选择省份</option>
                    </select>
                    <label for="city">市</label>
                    <select name="city" id="city">
                        <option>请选择城市</option>
                    </select>
                </fieldset>
                <input type="text" placeholder="具体到门牌号, 例：××县××镇××街××号" name="street"/>

                <label for="tel">联系电话</label>
                <input type="tel" id="tel" name="telephone" value=""/>
            </div>

            <button type="submit">下一页</button>
        </form>
    </div>
    <div data-role="footer" data-position="false">
        <h4>蜜蜂科技</h4>
    </div>
</div>

<script type="text/javascript">
	function check(){
    $.ajax({
        url:"../addUser",
        type:"POST",
        data: $('#form1').serialize(),
        datatype:"json",
        success: function (result) {
            console.log(result);//打印服务端返回的数据(调试用)
            if (result.resultCode == 200) {
                alert("SUCCESS");
            }
        },
        error : function() {
            alert("异常！");
        }
    });
	}
	
	function checkName(){
		var name=$("#name").value;
		var name_prompt=$("#name_prompt");
		name_prompt.innerHTML="";
		if(name==""){
			name_prompt.innerHTML="姓名不能为空";
			return false;
		}
		
	}
</script>


<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script> -->
<!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script> -->
</body>
</html>