<div class="box">
    <div class="box-header with-border">
        <h3 class="box-title">%LNG_ACTION%</h3>
    </div>
    <div class="box-body">
        <form action=$SELF_URL method='get'>
            <input type=hidden name=index value=$index>
            <input type=hidden name=BUILDING.ID value='%BUILDING.ID%'>
            <div class="row">
                <div class="col-12 col-md-6">
                    <div class="form-group">
                        <input type="text" name="NAME" value='%NAME%'  class="form-control" placeholder="Building name">
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div class="form-group">
%STREET_SELECT%
                    </div>
                </div>
            </div>
            <input type=submit method=get name=%ACTION% value='%LNG_ACTION%' class="btn btn-primary  mt-2">
        </form>
    </div>
</div>