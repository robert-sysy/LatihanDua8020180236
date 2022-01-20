<?php $__env->startSection('content'); ?>
    <div class="content-header sty-one">
        <h1>Buku</h1>
        <ol class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><i class="fa fa-angle-right"></i> Buku</li>
        </ol>
    </div>

    <div class="content">
        <div class="row">

            <div class="col-xl-12">
                <div class="info-box">
                    <div class="table-responsive">
                        <table class="table" id='dataTable'>
                            <thead>
                            <tr>
                                <th width=2>#</th>
                                <th>Judul</th>
                                <th>Pengarang</th>
                                <th>Created At</th>
                                <th>Updated At</th>
                                <?php if(!in_array(auth()->user()->level, ['Siswa', 'Guru'])): ?>
                                    <th class="text-center">Aksi</th>
                                <?php endif; ?>
                            </tr>
                            </thead>
                            <tbody>
                            <?php $__currentLoopData = $buku; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr data-id='<?php echo e($item->id); ?>'>
                                    <td>
                                        <?php echo e($loop->iteration); ?>

                                    </td>

                                    <td><?php echo e($item->judul); ?></td>
                                    <td><?php echo e($item->pengarang); ?></td>
                                    <td><?php echo e($item->created_at); ?></td>
                                    <td><?php echo e($item->updated_at); ?></td>

                                    <?php if(!in_array(auth()->user()->level, ['Siswa', 'Guru'])): ?>
                                        <td class="text-center">
                                            <a class="badge badge-primary"
                                               href="<?php echo e(url('/buku/' . $item->id . '/edit')); ?>">Edit</a>
                                            <form action="<?php echo e(url('/buku' . '/' . $item->id)); ?>" method='post'
                                                  style='display: inline;'
                                                  onsubmit="return confirm('Yakin akan menghapus data ini?')">
                                                <?php echo method_field('DELETE'); ?>
                                                <?php echo csrf_field(); ?>
                                                <label class="badge badge-danger" href=""
                                                       for='btnSubmit-<?php echo e($item->id); ?>'
                                                       style='cursor: pointer;'>Hapus</label>
                                                <button type="submit" id='btnSubmit-<?php echo e($item->id); ?>'
                                                        style="display: none;"></button>
                                            </form>
                                        </td>
                                    <?php endif; ?>
                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        const locationHrefHapusSemua = "<?php echo e(url('buku/hapus_semua')); ?>";
        const locationHrefAktifkanSemua = "<?php echo e(url('buku/aktifkan_semua')); ?>";
        const locationHrefCreate = "<?php echo e(url('buku/create')); ?>";
        var columnOrders = [<?php echo e($buku_count); ?>];
        var urlSearch = "<?php echo e(url('buku')); ?>";
        var q = "<?php echo e($_GET['q'] ?? ''); ?>";
        var placeholder = "Filter...";
        var tampilkan_buttons = true;
        var button_manual = true;

        <?php if(in_array(auth()->user()->level, ['Siswa', 'Guru'])): ?>
        var tampilkan_buttons = false;
        var button_manual = false;
        <?php endif; ?>
    </script>
<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.app2', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\bikinaplikasi\project\28.1 tugas mahasiswa\perpustakaan\resources\views/buku/index.blade.php ENDPATH**/ ?>