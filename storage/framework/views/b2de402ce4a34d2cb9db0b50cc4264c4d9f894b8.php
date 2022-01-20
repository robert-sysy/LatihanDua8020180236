<div class='row'>
    <div class='col-md-12'>
        <form class="form-horizontal form-material" action="<?php echo e(url(route('buku.print'))); ?>" method="post"
            enctype="multipart/form-data">
            <?php echo csrf_field(); ?>


            <div class="form-group">
                <label class="col-md-12">Kode_buku</label>
                <div class="col-md-12">
                    <select class="form-control form-control-line" name='kode_buku'>
                        <option value=""></option>
                        <?php $__currentLoopData = $kode_bukus; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $kode_buku): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($kode_buku); ?>" <?php if(old('kode_buku')==$kode_buku): ?> selected <?php endif; ?>>
                            <?php echo e(ucwords($kode_buku)); ?></option>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </select>

                    <?php $__errorArgs = ['kode_buku'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                    <span class="invalid-feedback" role="alert">
                        <strong><?php echo e($message); ?></strong>
                    </span>
                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-12">Pengarang</label>
                <div class="col-md-12">
                    <select class="form-control form-control-line" name='pengarang'>
                        <option value=""></option>
                        <?php $__currentLoopData = $pengarangs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pengarang): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($pengarang); ?>" <?php if(old('pengarang')==$pengarang): ?> selected <?php endif; ?>>
                            <?php echo e(ucwords($pengarang)); ?></option>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </select>

                    <?php $__errorArgs = ['pengarang'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                    <span class="invalid-feedback" role="alert">
                        <strong><?php echo e($message); ?></strong>
                    </span>
                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-12">Penerbit</label>
                <div class="col-md-12">
                    <select class="form-control form-control-line" name='penerbit'>
                        <option value=""></option>
                        <?php $__currentLoopData = $penerbits; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $penerbit): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($penerbit); ?>" <?php if(old('penerbit')==$penerbit): ?> selected <?php endif; ?>>
                            <?php echo e(ucwords($penerbit)); ?></option>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </select>

                    <?php $__errorArgs = ['penerbit'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                    <span class="invalid-feedback" role="alert">
                        <strong><?php echo e($message); ?></strong>
                    </span>
                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-12">Tahun</label>
                <div class="col-md-12">
                    <select class="form-control form-control-line" name='tahun'>
                        <option value=""></option>
                        <?php $__currentLoopData = $tahuns; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tahun): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($tahun); ?>" <?php if(old('tahun')==$tahun): ?> selected <?php endif; ?>><?php echo e(ucwords($tahun)); ?>

                        </option>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </select>

                    <?php $__errorArgs = ['tahun'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                    <span class="invalid-feedback" role="alert">
                        <strong><?php echo e($message); ?></strong>
                    </span>
                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-12">Kota</label>
                <div class="col-md-12">
                    <select class="form-control form-control-line" name='kota'>
                        <option value=""></option>
                        <?php $__currentLoopData = $kotas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $kota): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($kota); ?>" <?php if(old('kota')==$kota): ?> selected <?php endif; ?>><?php echo e(ucwords($kota)); ?>

                        </option>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </select>

                    <?php $__errorArgs = ['kota'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                    <span class="invalid-feedback" role="alert">
                        <strong><?php echo e($message); ?></strong>
                    </span>
                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                </div>
            </div>


            <div class="form-group">
                <label class="col-md-12">Status</label>
                <div class="col-md-12">
                    <select class="form-control form-control-line" name='status'>
                        <?php $__currentLoopData = ['', 'Belum Dikembalikan', 'Dikembalikan']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $status): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($status); ?>" <?php if(old('status')==$status): ?> selected <?php endif; ?>><?php echo e($status); ?></option>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </select>

                    <?php $__errorArgs = ['status'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                    <span class="invalid-feedback" role="alert">
                        <strong><?php echo e($message); ?></strong>
                    </span>
                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-12">Field</label>
                <div class="col-md-12">
                    <select class="form-control form-control-line" name='field' required>
                        <?php $__currentLoopData = ['id','judul','pengarang','penerbit','tahun','kota','stok','created at']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $field): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($field); ?>" <?php if(old('field')==$field): ?> selected <?php endif; ?>>
                            <?php echo e(ucwords(preg_replace("/_/", " ", $field))); ?></option>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </select>

                    <?php $__errorArgs = ['field'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                    <span class="invalid-feedback" role="alert">
                        <strong><?php echo e($message); ?></strong>
                    </span>
                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-12">Order</label>
                <div class="col-md-12">
                    <select class="form-control form-control-line" name='order' required>
                        <?php $__currentLoopData = ['ASC', 'DESC']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $order): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($order); ?>" <?php if(old('order')==$order): ?> selected <?php endif; ?>><?php echo e($order); ?></option>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </select>

                    <?php $__errorArgs = ['order'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                    <span class="invalid-feedback" role="alert">
                        <strong><?php echo e($message); ?></strong>
                    </span>
                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-12">
                    <button name='preview' value='true' class="btn btn-info" type="submit">Preview</button>
                    <button class="btn btn-success" type="submit">Print</button>
                </div>
            </div>
        </form>
    </div>
</div>
<!--
<div class="row">
    <div class="col-md-12 ">
        <h3 align="center">LAPORAN BUKU</h3>

        <table width="100%" border="1" style='margin-bottom: 250px;'>
            <thead>
                <tr>
                    <th width=3>No.</th>
                    <th>Judul</th>
                    <th>Pengarang</th>
                    <th>Penerbit</th>
                    <th>Tahun</th>
                    <th>Kota</th>
                    <th>Stok</th>
                    <th>Created at</th>
                </tr>
            </thead>

            <tbody>
                <?php $__currentLoopData = $bukus; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $buku): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr>
                    <th><?php echo e($loop->iteration); ?>.</th>

                    <td><?php echo e($buku->judul); ?></td>

                    <td><?php echo e($buku->pengarang); ?></td>

                    <td><?php echo e($buku->penerbit); ?></td>

                    <td><?php echo e($buku->tahun); ?></td>

                    <td><?php echo e($buku->kota); ?></td>

                    <td><?php echo e($buku->stok); ?></td>

                    <td><?php echo e($buku->created at); ?></td>

                </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </tbody>
        </table>
    </div>
</div> -->
<?php /**PATH D:\bikinaplikasi\project\40. ebi\perpustakaan\resources\views/layouts/buku/laporan/index.blade.php ENDPATH**/ ?>
