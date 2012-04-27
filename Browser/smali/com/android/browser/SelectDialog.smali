.class Lcom/android/browser/SelectDialog;
.super Lcom/android/browser/WebDialog;
.source "SelectDialog.java"


# instance fields
.field private mCopyButton:Landroid/view/View;

.field private mCopyListener:Landroid/view/View$OnClickListener;

.field private mFindButton:Landroid/view/View;

.field private mFindListener:Landroid/view/View$OnClickListener;

.field private mSelectAllButton:Landroid/view/View;

.field private mSelectAllListener:Landroid/view/View$OnClickListener;

.field private mShareButton:Landroid/view/View;

.field private mShareListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/browser/WebDialog;-><init>(Lcom/android/browser/BrowserActivity;)V

    .line 45
    new-instance v1, Lcom/android/browser/SelectDialog$1;

    invoke-direct {v1, p0}, Lcom/android/browser/SelectDialog$1;-><init>(Lcom/android/browser/SelectDialog;)V

    iput-object v1, p0, Lcom/android/browser/SelectDialog;->mCopyListener:Landroid/view/View$OnClickListener;

    .line 52
    new-instance v1, Lcom/android/browser/SelectDialog$2;

    invoke-direct {v1, p0}, Lcom/android/browser/SelectDialog$2;-><init>(Lcom/android/browser/SelectDialog;)V

    iput-object v1, p0, Lcom/android/browser/SelectDialog;->mSelectAllListener:Landroid/view/View$OnClickListener;

    .line 58
    new-instance v1, Lcom/android/browser/SelectDialog$3;

    invoke-direct {v1, p0}, Lcom/android/browser/SelectDialog$3;-><init>(Lcom/android/browser/SelectDialog;)V

    iput-object v1, p0, Lcom/android/browser/SelectDialog;->mShareListener:Landroid/view/View$OnClickListener;

    .line 66
    new-instance v1, Lcom/android/browser/SelectDialog$4;

    invoke-direct {v1, p0}, Lcom/android/browser/SelectDialog$4;-><init>(Lcom/android/browser/SelectDialog;)V

    iput-object v1, p0, Lcom/android/browser/SelectDialog;->mFindListener:Landroid/view/View$OnClickListener;

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 32
    .local v0, factory:Landroid/view/LayoutInflater;
    const v1, 0x7f03000d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    invoke-virtual {p0}, Lcom/android/browser/SelectDialog;->addCancel()V

    .line 35
    const v1, 0x7f0d003c

    invoke-virtual {p0, v1}, Lcom/android/browser/SelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/SelectDialog;->mCopyButton:Landroid/view/View;

    .line 36
    iget-object v1, p0, Lcom/android/browser/SelectDialog;->mCopyButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/browser/SelectDialog;->mCopyListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const v1, 0x7f0d003e

    invoke-virtual {p0, v1}, Lcom/android/browser/SelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/SelectDialog;->mSelectAllButton:Landroid/view/View;

    .line 38
    iget-object v1, p0, Lcom/android/browser/SelectDialog;->mSelectAllButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/browser/SelectDialog;->mSelectAllListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v1, 0x7f0d003d

    invoke-virtual {p0, v1}, Lcom/android/browser/SelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/SelectDialog;->mShareButton:Landroid/view/View;

    .line 40
    iget-object v1, p0, Lcom/android/browser/SelectDialog;->mShareButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/browser/SelectDialog;->mShareListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v1, 0x7f0d003f

    invoke-virtual {p0, v1}, Lcom/android/browser/SelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/SelectDialog;->mFindButton:Landroid/view/View;

    .line 42
    iget-object v1, p0, Lcom/android/browser/SelectDialog;->mFindButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/browser/SelectDialog;->mFindListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/browser/WebDialog;->dismiss()V

    .line 82
    iget-object v0, p0, Lcom/android/browser/WebDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->notifySelectDialogDismissed()V

    .line 83
    return-void
.end method
