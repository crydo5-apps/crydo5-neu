function storePreviewToken(token: string | null | undefined) {
  if (!token || typeof window === "undefined") return;
  try {
    window.sessionStorage.setItem("grok-auth.bearer-token", token);
  } catch {
    /* ignore */
  }
}

function emailAuthOpts() {
  return {
    onSuccess: (ctx: { response: Response }) => {
      storePreviewToken(ctx.response.headers.get("set-auth-token"));
    },
  };
}