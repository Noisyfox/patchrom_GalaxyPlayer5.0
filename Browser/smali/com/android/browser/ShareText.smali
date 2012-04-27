.class Lcom/android/browser/ShareText;
.super Lcom/android/browser/ToolTipItem;
.source "TextSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mFile:Ljava/io/File;

.field mTextSelector:Lcom/android/browser/TextSelector;


# direct methods
.method constructor <init>(Lcom/android/browser/TextSelector;I)V
    .locals 5
    .parameter "ts"
    .parameter "nStrId"

    .prologue
    const-string v4, "ShareText"

    .line 466
    invoke-direct {p0}, Lcom/android/browser/ToolTipItem;-><init>()V

    .line 462
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/browser/ShareText;->mTextSelector:Lcom/android/browser/TextSelector;

    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, strText:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 469
    const-string v2, "ShareText"

    const-string v2, "ShareText : ts is null"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :goto_0
    iput-object p1, p0, Lcom/android/browser/ShareText;->mTextSelector:Lcom/android/browser/TextSelector;

    .line 478
    return-void

    .line 471
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    .line 472
    .local v1, vWebView:Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/ToolTipItem;->mstrText:Ljava/lang/String;

    .line 474
    const-string v2, "ShareText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShareText : String - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/ToolTipItem;->mstrText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/android/browser/ShareText;->onItemSelected()V

    .line 483
    return-void
.end method

.method public onItemSelected()V
    .locals 7

    .prologue
    .line 488
    iget-object v5, p0, Lcom/android/browser/ShareText;->mTextSelector:Lcom/android/browser/TextSelector;

    invoke-virtual {v5}, Lcom/android/browser/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebTextSelectionControls;->getSelectionText()Ljava/lang/String;

    move-result-object v2

    .line 489
    .local v2, mSelectedText:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/browser/ShareText;->mTextSelector:Lcom/android/browser/TextSelector;

    invoke-virtual {v5}, Lcom/android/browser/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 490
    .local v1, mBrowserActivity:Landroid/content/Context;
    iget-object v5, p0, Lcom/android/browser/ShareText;->mTextSelector:Lcom/android/browser/TextSelector;

    invoke-virtual {v5}, Lcom/android/browser/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v3

    .line 492
    .local v3, mWebView:Landroid/webkit/WebView;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 493
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f090131

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 494
    const v5, 0x7f060068

    new-instance v6, Lcom/android/browser/ShareText$1;

    invoke-direct {v6, p0, v2, v1}, Lcom/android/browser/ShareText$1;-><init>(Lcom/android/browser/ShareText;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 541
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 542
    .local v4, sharePopup:Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 543
    return-void
.end method
