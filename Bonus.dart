import 'dart:async';
import 'dart:io';

void main() {
  final urls = [
    'https://example.com/file1.txt',
    'https://example.com/file2.txt',
    'https://example.com/file3.txt',
  ];

  for (var url in urls) {
    downloadFile(url);
  }
}

void downloadFile(String url) async {
  final httpClient = HttpClient();
  final request = await httpClient.getUrl(Uri.parse(url));
  final response = await request.close();
  final contentLength = response.contentLength;

  var receivedBytes = 0;

  final fileName = url.split('/').last;
  final file = File(fileName);

  final sink = file.openWrite();

  await for (var chunk in response) {
    receivedBytes += chunk.length;
    sink.add(chunk);

    final progress = ((receivedBytes / contentLength) * 100).toStringAsFixed(2);
    print('Downloading $fileName: $progress%');
  }

  await sink.close();
  httpClient.close();

  print('Download completed: $fileName');
}