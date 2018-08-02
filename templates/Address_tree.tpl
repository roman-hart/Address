<style>
.tree li {
    list-style-type:none;
    margin:0;
    padding:10px 5px 0 5px;
    position:relative
}
.tree li::before, .tree li::after {
    content:'';
    left:-20px;
    position:absolute;
    right:auto
}
.tree li::before {
    border-left:1px solid #999;
    bottom:50px;
    height:100%;
    top:0;
    width:1px
}
.tree li::after {
    border-top:1px solid #999;
    height:20px;
    top:25px;
    width:25px
}
.tree li span {
    -moz-border-radius:5px;
    -webkit-border-radius:5px;
    border:1px solid #999;
    border-radius:5px;
    display:inline-block;
    padding:3px 8px;
    text-decoration:none;
	color:#fff;
	background-color:#3c8dbc;
}
.tree li.parent_li>span {
    cursor:pointer
}
.tree>ul>li::before, .tree>ul>li::after {
    border:0
}
.tree li:last-child::before {
    height:30px
}
.tree li.parent_li>span:hover, .tree li.parent_li>span:hover+ul li span {
    background:#ddd;
    border:1px solid #94a0b4;
    color:#000;
}
</style>

<script type="text/javascript">
jQuery(function () {
    jQuery('.tree li:has(ul)').addClass('parent_li').find(' > span').attr('title', 'Collapse this branch');
    jQuery('.tree li.parent_li > span').on('click', function (e) {
        var children = jQuery(this).parent('li.parent_li').find(' > ul > li');
        if (children.is(":visible")) {
            children.hide('fast');
            jQuery(this).attr('title', 'Expand this branch').find(' > i').addClass('fa-plus-circle').removeClass('fa-minus-circle');
        } else {
            children.show('fast');
            jQuery(this).attr('title', 'Collapse this branch').find(' > i').addClass('fa-minus-circle').removeClass('fa-plus-circle');
        }
        e.stopPropagation();
    });
});
</script>

<div align=left class=tree><br>