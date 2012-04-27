.class Lcom/android/browser/WebDialog;
.super Landroid/widget/LinearLayout;
.source "WebDialog.java"


# instance fields
.field protected mBrowserActivity:Lcom/android/browser/BrowserActivity;

.field private mCancelListener:Landroid/view/View$OnClickListener;

.field private mIsVisible:Z

.field protected mWebView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/android/browser/WebDialog$1;

    invoke-direct {v0, p0}, Lcom/android/browser/WebDialog$1;-><init>(Lcom/android/browser/WebDialog;)V

    iput-object v0, p0, Lcom/android/browser/WebDialog;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 33
    iput-object p1, p0, Lcom/android/browser/WebDialog;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    .line 34
    return-void
.end method


# virtual methods
.method protected addCancel()V
    .locals 2

    .prologue
    .line 40
    const v1, 0x7f0d0038

    invoke-virtual {p0, v1}, Lcom/android/browser/WebDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, button:Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/browser/WebDialog;->mCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    :cond_0
    return-void
.end method

.method protected dismiss()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/browser/WebDialog;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/WebDialog;->startAnimation(Landroid/view/animation/Animation;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/WebDialog;->mIsVisible:Z

    .line 54
    return-void
.end method

.method protected hideSoftInput()V
    .locals 3

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/browser/WebDialog;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 62
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/browser/WebDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 63
    return-void
.end method

.method protected isVisible()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/browser/WebDialog;->mIsVisible:Z

    return v0
.end method

.method setWebView(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "webview"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/browser/WebDialog;->mWebView:Landroid/webkit/WebView;

    .line 71
    return-void
.end method

.method protected show()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/browser/WebDialog;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    const/high16 v1, 0x7f04

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/WebDialog;->startAnimation(Landroid/view/animation/Animation;)V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/WebDialog;->mIsVisible:Z

    .line 77
    return-void
.end method
