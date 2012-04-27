.class Lcom/android/browser/ShareText$1;
.super Ljava/lang/Object;
.source "TextSelector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ShareText;->onItemSelected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ShareText;

.field final synthetic val$mBrowserActivity:Landroid/content/Context;

.field final synthetic val$mSelectedText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/ShareText;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/browser/ShareText$1;->this$0:Lcom/android/browser/ShareText;

    iput-object p2, p0, Lcom/android/browser/ShareText$1;->val$mSelectedText:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/browser/ShareText$1;->val$mBrowserActivity:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "item"

    .prologue
    const-string v10, "android.intent.action.SEND"

    const-string v9, "/sdcard/native_browser_share_image.jpg"

    .line 497
    iget-object v6, p0, Lcom/android/browser/ShareText$1;->this$0:Lcom/android/browser/ShareText;

    iget-object v6, v6, Lcom/android/browser/ShareText;->mTextSelector:Lcom/android/browser/TextSelector;

    invoke-virtual {v6}, Lcom/android/browser/TextSelector;->GetTabControl()Lcom/android/browser/TabControl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 500
    .local v1, parent:Lcom/android/browser/Tab;
    add-int/lit8 p2, p2, 0x1

    packed-switch p2, :pswitch_data_0

    .line 539
    :goto_0
    return-void

    .line 503
    :pswitch_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 504
    .local v5, sendText:Landroid/content/Intent;
    const-string v6, "text/plain"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    const-string v6, "android.intent.extra.TEXT"

    iget-object v7, p0, Lcom/android/browser/ShareText$1;->val$mSelectedText:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    :try_start_0
    iget-object v6, p0, Lcom/android/browser/ShareText$1;->val$mBrowserActivity:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/browser/ShareText$1;->val$mBrowserActivity:Landroid/content/Context;

    const v8, 0x7f090060

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 512
    :goto_1
    iget-object v6, p0, Lcom/android/browser/ShareText$1;->this$0:Lcom/android/browser/ShareText;

    iget-object v6, v6, Lcom/android/browser/ShareText;->mTextSelector:Lcom/android/browser/TextSelector;

    invoke-virtual {v6}, Lcom/android/browser/TextSelector;->clearSelection()V

    goto :goto_0

    .line 516
    .end local v5           #sendText:Landroid/content/Intent;
    :pswitch_1
    iget-object v6, p0, Lcom/android/browser/ShareText$1;->this$0:Lcom/android/browser/ShareText;

    iget-object v6, v6, Lcom/android/browser/ShareText;->mTextSelector:Lcom/android/browser/TextSelector;

    invoke-virtual {v6}, Lcom/android/browser/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v3

    .line 517
    .local v3, selectionControls:Landroid/webkit/WebTextSelectionControls;
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/webkit/WebTextSelectionControls;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 518
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/browser/ShareText$1;->this$0:Lcom/android/browser/ShareText;

    iget-object v6, v6, Lcom/android/browser/ShareText;->mTextSelector:Lcom/android/browser/TextSelector;

    invoke-virtual {v6}, Lcom/android/browser/TextSelector;->clearSelection()V

    .line 520
    const-wide/16 v6, 0x3e8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 525
    :goto_2
    const-string v6, "/sdcard/native_browser_share_image.jpg"

    invoke-virtual {v3, v9, v2}, Landroid/webkit/WebTextSelectionControls;->saveImage(Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 526
    iget-object v6, p0, Lcom/android/browser/ShareText$1;->this$0:Lcom/android/browser/ShareText;

    new-instance v7, Ljava/io/File;

    const-string v8, "/sdcard/native_browser_share_image.jpg"

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, v6, Lcom/android/browser/ShareText;->mFile:Ljava/io/File;

    .line 527
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .local v4, sendImage:Landroid/content/Intent;
    const-string v6, "image/jpg"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    const-string v6, "android.intent.extra.STREAM"

    iget-object v7, p0, Lcom/android/browser/ShareText$1;->this$0:Lcom/android/browser/ShareText;

    iget-object v7, v7, Lcom/android/browser/ShareText;->mFile:Ljava/io/File;

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 531
    :try_start_2
    iget-object v6, p0, Lcom/android/browser/ShareText$1;->val$mBrowserActivity:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/browser/ShareText$1;->val$mBrowserActivity:Landroid/content/Context;

    const v8, 0x7f090060

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 533
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 521
    .end local v4           #sendImage:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 522
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v6, "ShareText"

    const-string v7, "Thread.sleep Interrupted"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 509
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v2           #rect:Landroid/graphics/Rect;
    .end local v3           #selectionControls:Landroid/webkit/WebTextSelectionControls;
    .restart local v5       #sendText:Landroid/content/Intent;
    :catch_2
    move-exception v6

    goto :goto_1

    .line 500
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
