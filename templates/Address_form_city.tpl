<div class="box">
    <div class="box-header with-border">
        <h3 class="box-title">%LNG_ACTION%</h3>
    </div>
    <div class="box-body">
        <form action=$SELF_URL method='get'>
            <input type=hidden name=index value=$index>
            <input type=hidden name=CITY.ID value='%CITY.ID%'>
            <div class="row">
                <div class="col-12 col-md-6">
                    <div class="form-group">
                        <input type="text" name="NAME" value='%NAME%'  class="form-control" placeholder="City name">
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div class="form-group">
						<select name="REGION_ID" value=''>
<option value='1'  class="form-control mt-2">Ivano-Frankivska obl</option>
<option value='2'  class="form-control mt-2">Lvivska obl</option>						
<option value='3'  class="form-control mt-2">Odeska obl</option>       
<option value='4'  class="form-control mt-2">Dniprovska obl</option>  
<option value='5'  class="form-control mt-2">Chernihivska obl</option>  
<option value='6'  class="form-control mt-2">Kharkivska obl</option>  
<option value='7'  class="form-control mt-2">Zhytomyrska obl</option>  
<option value='8'  class="form-control mt-2">Poltavska obl</option> 
<option value='9'  class="form-control mt-2">Khersonska obl</option> 
<option value='10'  class="form-control mt-2">Kyivska obl</option> 
<option value='11'  class="form-control mt-2">Zaporizhska obl</option> 
<option value='12'  class="form-control mt-2">Vinnytska obl</option> 
<option value='13'  class="form-control mt-2">Mykholaivska obl</option> 
<option value='14'  class="form-control mt-2">Kirovokhradska obl</option>
<option value='15'  class="form-control mt-2">Sumska obl</option>
<option value='16'  class="form-control mt-2">Cherkaska obl</option>
<option value='17'  class="form-control mt-2">Khmelnitska obl</option>
<option value='18'  class="form-control mt-2">Volynska obl</option>
<option value='19'  class="form-control mt-2">Rivnenska obl</option>
<option value='20'  class="form-control mt-2">Ternopilska obl</option>  
<option value='21'  class="form-control mt-2">Zakarpatska obl</option>  
<option value='22'  class="form-control mt-2">Chernivetska obl</option>
							
						</select>
                    </div>
                </div>
            </div>
            <input type=submit method=get name=%ACTION% value='%LNG_ACTION%' class="btn btn-primary  mt-2">
        </form>
    </div>
</div>