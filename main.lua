// 特定のメッセージを連打（5回）
const msg = "こんにちは！";
const count = 5;
let sent = 0;

const interval = setInterval(() => {
  const input = document.querySelector('input[type="text"], textarea');
  const sendBtn = document.querySelector('button[type="submit"], .send-btn');
  
  if (input && sendBtn) {
    input.value = msg;
    input.dispatchEvent(new Event('input', { bubbles: true }));
    sendBtn.click();
    sent++;
    console.log(`${sent}回送信`);
    
    if (sent >= count) clearInterval(interval);
  }
}, 2000); // 2秒間隔
