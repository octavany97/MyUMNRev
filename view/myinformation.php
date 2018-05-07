<style>
    .save, .cancel {
        display:none;
    }

    .editable{
        background: #e8eaed;
    }
</style>
<div style="padding-bottom: 40px"></div>
<div id="directives-calendar" class="row" ng-controller="myInformationController"> 
    <legend style="text-align:left; display:block; width:100%; padding:0; margin-bottom:20px; font-size:21px; line-height:inherit; color:#333; border:0; border-bottom:1px solid #e5e5e5">    
        My Information
    </legend>
    <div class="col-md-5 col-md-offset-1 col-xs-10">
        <h4>
            Student Information
            <input type="hidden" value="{{ loginuser.data['infoID'] }}" id="userid" />
            <input type="hidden" value="{{ loginuser.data['noTelp'] }}" id="nohplama" />
            <input type="hidden" value="{{ loginuser.data['domisili'] }}" id="domisililama" />
        </h4>
        <table class="table" style="text-align:left">
            <tbody>
                <tr>
                    <th>Student Name</th>
                    <td>{{loginuser.data['namaBelakang'] == null ? loginuser.data['namaDepan'] : loginuser.data['namaDepan'] + ' ' + loginuser.data['namaBelakang']}}</td>
                </tr>
                <tr>
                    <th>Student ID</th>
                    <td>{{loginuser.data['nim']}}</td>
                </tr>
                <tr>
                    <th>Major</th>
                    <td>{{loginuser.data['prodi']}}</td>
                </tr>
                <tr>
                    <th>Class of</th>
                    <td>{{loginuser.data['angkatan']}}</td>
                </tr>
                <tr>
                    <th>Place, Date of Birth</th>
                    <td>{{loginuser.data['tempatLahir']}}, {{loginuser.data['tanggalLahir']}}</td>
                </tr>
                <tr>
                    <th>Phone Number</th>
                    <td id="nohp">
                        {{loginuser.data['noTelp']}}</td>
                </tr>
                <tr>
                    <th>Domicile Address</th>
                    <td id="domisili">{{loginuser.data['domisili']}}</td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td>{{loginuser.data['email']}}</td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="col-md-4 col-md-offset-1 col-xs-10">
        <h4>
            Parent/Foster Information
        </h4>
        <table class="table" style="text-align:left">
            <tbody>
                <tr>
                    <th>Name</th>
                    <td>{{loginuser.data['namaOrtu']}}</td>
                </tr>
                <tr>
                    <th>Relation</th>
                    <td>{{loginuser.data['relasi']}}</td>
                </tr>
                <tr>
                    <th>Phone Number</th>
                    <td>{{loginuser.data['noTelpOrtu']}}</td>
                </tr>
                <tr>
                    <th>Address</th>
                    <td>{{loginuser.data['alamat']}}</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

<div class="row" style="margin-bottom: 50px;">
    <!-- kalau gak dikasih margin, tombol save gak bisa dipencet -->
    <div class="col-md-4 col-md-offset-4 col-xs-12">
        <button class="edit btn btn-warning" type="button">Edit</button>
        <button class="save btn btn-success" type="button">Save</button>
        <button class="cancel btn btn-danger" type="button">Cancel</button>
    </div>
</div>
 
<div id="alert-success" class="alert alert-success alert-dismissable" style="display: none;">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Success!</strong> Updating Student Info.
</div>
<div id="alert-failed" class="alert alert-danger alert-dismissable" style="display: none;">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Failed!</strong> Updating Student Info.
</div>


<script>
    var nohpLama = 0;

    $('.edit').click(function() {
        $(this).hide();
        $(this).siblings('.save, .cancel').show();

        var $nohp=$('#nohp'), isEditable=$nohp.is('.editable');
        $('#nohp').prop('contenteditable',!isEditable).toggleClass('editable')

        var $domisili=$('#domisili'), isEditable=$domisili.is('.editable');
        $('#domisili').prop('contenteditable',!isEditable).toggleClass('editable')
    });

    $('.cancel').click(function() {
        $(this).siblings('.edit').show();
        $(this).siblings('.save').hide();
        $(this).hide();

        var $nohp=$('#nohp'), isEditable=$nohp.is('.editable');
        $('#nohp').prop('contenteditable',!isEditable).toggleClass('editable')

        var $domisili=$('#domisili'), isEditable=$domisili.is('.editable');
        $('#domisili').prop('contenteditable',!isEditable).toggleClass('editable')

        $('#nohp').html($('#nohplama').val())
        $('#domisili').html($('#domisililama').val())
        // $(this).find('button').each(function(){
        // $(this).val($(this).data('original-text'));
    });

    $('.save').click(function() {
        $(this).siblings('.edit').show();
        $(this).siblings('.cancel').hide();
        $(this).hide();

        var $nohp=$('#nohp'), isEditable=$nohp.is('.editable');
        $('#nohp').prop('contenteditable',!isEditable).toggleClass('editable')

        var $domisili=$('#domisili'), isEditable=$domisili.is('.editable');
        $('#domisili').prop('contenteditable',!isEditable).toggleClass('editable')

        $.ajax({
            url: 'controller/updatestudentinformation.php',
            type: 'POST',
            data: {
                info: $('#userid').val(),
                noTelp: $('#nohp').html(),
                domisili: $('#domisili').html(),
                save: true
            },
            success: function(response) {
                console.log(response);
                if (response == 'SUCCESS') {
                    $('#alert-success').css('display', 'block');
                    setTimeout(function() { $('#alert-success').css('display', 'none') }, 3000)
                } else {
                    $('#alert-failed').css('display', 'block');
                    setTimeout(function() { $('#alert-failed').css('display', 'none') }, 3000)
                }
            },
            error: function(response) {
                console.log(response);
            }
        })

        $('#domisililama').val($('#domisili').html());
        $('#nohplama').val($('#nohp').html());
    });
</script>