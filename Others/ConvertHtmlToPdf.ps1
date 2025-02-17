# param�u���b�N�́A�X�N���v�g�ɓn�����������`���܂��B
# �����ł́AHTML�t�@�C���̃p�X�Əo�͂���PDF�t�@�C���̃p�X��2�̕�����������`���Ă��܂��B
param(
    [string]$htmlFilePath,  # HTML�t�@�C���̃p�X���󂯎�邽�߂̈���
    [string]$pdfFilePath    # �o�͂����PDF�t�@�C���̃p�X���󂯎�邽�߂̈���
)

# Edge���g�p����HTML��PDF�ɕϊ����鏈�����J�n���܂��B
# Edge�̎��s�t�@�C���̃p�X��ϐ��Ɋi�[���܂��B
$edgePath = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"

# Edge�̃R�}���h���C��������ݒ肵�܂��B
# --headless: �w�b�h���X���[�h�ŋN�����AGUI��\�����܂���B
# --disable-gpu: GPU�𖳌��ɂ��܂��B
# --print-to-pdf="�o��PDF�t�@�C���̃p�X": HTML�t�@�C����PDF�ɕϊ����Ďw�肳�ꂽ�p�X�ɕۑ����܂��B
# "file:///$htmlFilePath": �ϊ�����HTML�t�@�C���̃p�X���w�肵�܂��B
$arguments = "--headless --disable-gpu --print-to-pdf=""$pdfFilePath"" ""file:///$htmlFilePath"""

# Start-Process�R�}���h���b�g���g�p���āAEdge���w�肵�������Ŏ��s���܂��B
# -FilePath: ���s����t�@�C���̃p�X���w�肵�܂��B
# -ArgumentList: �R�}���h���C���������w�肵�܂��B
# -NoNewWindow: �V�����E�B���h�E���J�����Ɏ��s���܂��B
# -Wait: �v���Z�X���I������܂őҋ@���܂��B
Start-Process -FilePath $edgePath -ArgumentList $arguments -NoNewWindow -Wait
