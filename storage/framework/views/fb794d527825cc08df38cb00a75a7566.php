
<script>
CKEDITOR.replace('description[en]', {
    height: 300,
    filebrowserUploadUrl: "<?php echo e(Route('upload.image',['_token'=>csrf_token()])); ?>"
, });
</script>
<script>
CKEDITOR.replace('description[ar]', {
    height: 300,
    filebrowserUploadUrl: "<?php echo e(Route('upload.image',['_token'=>csrf_token()])); ?>"
, });
</script>



<script>
CKEDITOR.replace('sub_description[en]', {
    height: 300,
    filebrowserUploadUrl: "<?php echo e(Route('upload.image',['_token'=>csrf_token()])); ?>"
, });
</script>
<script>
CKEDITOR.replace('sub_description[ar]', {
    height: 300,
    filebrowserUploadUrl: "<?php echo e(Route('upload.image',['_token'=>csrf_token()])); ?>"
, });
</script><?php /**PATH /home/hatem/Desktop/nen/resources/views/admin/layouts/ckeditor/ckeditor.blade.php ENDPATH**/ ?>