.class Lcom/android/browser/SearchText;
.super Lcom/android/browser/ToolTipItem;
.source "TextSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mTextSelector:Lcom/android/browser/TextSelector;


# direct methods
.method constructor <init>(Lcom/android/browser/TextSelector;I)V
    .locals 5
    .parameter "ts"
    .parameter "nStrId"

    .prologue
    const-string v4, "SearchText"

    .line 332
    invoke-direct {p0}, Lcom/android/browser/ToolTipItem;-><init>()V

    .line 313
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/browser/SearchText;->mTextSelector:Lcom/android/browser/TextSelector;

    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, strText:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 335
    const-string v2, "SearchText"

    const-string v2, "SearchText : ts is null"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :goto_0
    iput-object p1, p0, Lcom/android/browser/SearchText;->mTextSelector:Lcom/android/browser/TextSelector;

    .line 344
    return-void

    .line 337
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    .line 338
    .local v1, vWebView:Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/ToolTipItem;->mstrText:Ljava/lang/String;

    .line 340
    const-string v2, "SearchText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SearchText : String - "

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
    .line 348
    invoke-virtual {p0}, Lcom/android/browser/SearchText;->onItemSelected()V

    .line 349
    return-void
.end method

.method public onItemSelected()V
    .locals 12

    .prologue
    .line 354
    iget-object v10, p0, Lcom/android/browser/SearchText;->mTextSelector:Lcom/android/browser/TextSelector;

    invoke-virtual {v10}, Lcom/android/browser/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 355
    .local v5, mBrowserActivity:Landroid/content/Context;
    iget-object v10, p0, Lcom/android/browser/SearchText;->mTextSelector:Lcom/android/browser/TextSelector;

    invoke-virtual {v10}, Lcom/android/browser/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/WebView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/WebTextSelectionControls;->getSelectionText()Ljava/lang/String;

    move-result-object v7

    .line 356
    .local v7, mSelectedText:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 357
    .local v6, mSelectedLanguage:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/browser/SearchText;->mTextSelector:Lcom/android/browser/TextSelector;

    invoke-virtual {v10}, Lcom/android/browser/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v8

    .line 360
    .local v8, mWebView:Landroid/webkit/WebView;
    const-string v1, "http://baidu.mobi/s?vit=union&from=124l&word=%s&ua=parameter&uid=parameter"

    .line 361
    .local v1, QuickSearch_B:Ljava/lang/String;
    const-string v2, "http://baidu.mobi/s?word=%s&mark=3"

    .line 362
    .local v2, QuickSearch_D:Ljava/lang/String;
    const-string v3, "http://wapbaike.baidu.com/search?word=%s"

    .line 377
    .local v3, QuickSearch_W:Ljava/lang/String;
    const-string v0, "%s"

    .line 379
    .local v0, QUERY_PLACE_HOLDER:Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 380
    .local v4, builder:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f090130

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 381
    const v10, 0x7f060067

    new-instance v11, Lcom/android/browser/SearchText$1;

    invoke-direct {v11, p0, v5, v7}, Lcom/android/browser/SearchText$1;-><init>(Lcom/android/browser/SearchText;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v10, v11}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 447
    iget-object v10, p0, Lcom/android/browser/SearchText;->mTextSelector:Lcom/android/browser/TextSelector;

    invoke-virtual {v10}, Lcom/android/browser/TextSelector;->clearSelection()V

    .line 449
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 450
    .local v9, searchPopup:Landroid/app/AlertDialog;
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 451
    return-void
.end method
