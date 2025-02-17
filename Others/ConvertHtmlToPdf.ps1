# paramブロックは、スクリプトに渡される引数を定義します。
# ここでは、HTMLファイルのパスと出力するPDFファイルのパスの2つの文字列引数を定義しています。
param(
    [string]$htmlFilePath,  # HTMLファイルのパスを受け取るための引数
    [string]$pdfFilePath    # 出力されるPDFファイルのパスを受け取るための引数
)

# Edgeを使用してHTMLをPDFに変換する処理を開始します。
# Edgeの実行ファイルのパスを変数に格納します。
$edgePath = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"

# Edgeのコマンドライン引数を設定します。
# --headless: ヘッドレスモードで起動し、GUIを表示しません。
# --disable-gpu: GPUを無効にします。
# --print-to-pdf="出力PDFファイルのパス": HTMLファイルをPDFに変換して指定されたパスに保存します。
# "file:///$htmlFilePath": 変換するHTMLファイルのパスを指定します。
$arguments = "--headless --disable-gpu --print-to-pdf=""$pdfFilePath"" ""file:///$htmlFilePath"""

# Start-Processコマンドレットを使用して、Edgeを指定した引数で実行します。
# -FilePath: 実行するファイルのパスを指定します。
# -ArgumentList: コマンドライン引数を指定します。
# -NoNewWindow: 新しいウィンドウを開かずに実行します。
# -Wait: プロセスが終了するまで待機します。
Start-Process -FilePath $edgePath -ArgumentList $arguments -NoNewWindow -Wait
