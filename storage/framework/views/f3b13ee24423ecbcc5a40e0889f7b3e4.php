<input type="<?php echo e($type??''); ?>" name="<?php echo e(($name)??''); ?>"  value="<?php echo e(isset($value) ? $value : old($old??'')); ?>" 
class="<?php echo e($class??'form-control'); ?>" id="<?php echo e($id??''); ?>" data-default-file="<?php echo e(!empty($model)?$model->getFirstMediaUrl($nameImage??''):''); ?>" 
placeholder="<?php echo e(TranslationHelper::translate(ucfirst($placeholder)??'')); ?>"  <?php echo e($required ?? ''); ?>  <?php echo e($accept??''); ?>/><?php /**PATH /home/hatem/Desktop/dashboard-laravel/resources/views/components/admin/form/input.blade.php ENDPATH**/ ?>