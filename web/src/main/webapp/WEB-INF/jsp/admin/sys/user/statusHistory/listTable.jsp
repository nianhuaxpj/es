<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf"%>
<table id="historyTable" class="sort-table table table-bordered table-hover table-striped" data-async="true">
    <thead>
    <tr>
        <th sort="id">编号</th>
        <th sort="user.username">用户</th>
        <th>状态</th>
        <th sort="opUser.username">管理员</th>
        <th sort="opDate">操作时间</th>
    </tr>
    <tbody>
    <c:forEach items="${page.content}" var="m">
        <tr>
            <td>
                    ${m.id}
            </td>
            <td><a href="${ctx}/admin/sys/user/sysUser/${m.user.id}">${m.user.username}</a></td>
            <td>${m.status.info}</td>
            <td><a href="${ctx}/admin/sys/user/sysUser/${m.opUser.id}">${m.opUser.username}</a></td>
            <td><spring:eval expression="m.opDate"/></td>
        </tr>
    </c:forEach>
    </tbody>
    <tfoot>
        <tr>
            <td colspan="1000">
                <es:page page="${page}" />
            </td>
        </tr>
    </tfoot>
</table>

