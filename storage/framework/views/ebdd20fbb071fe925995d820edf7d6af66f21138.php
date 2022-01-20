

<?php $__env->startSection('content'); ?>

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
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.print', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\bikinaplikasi\project\40. ebi\perpustakaan\resources\views/buku/laporan/print.blade.php ENDPATH**/ ?>
