.class Lcom/android/browser/SelectDialog$3;
.super Ljava/lang/Object;
.source "SelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/SelectDialog;


# direct methods
.method constructor <init>(Lcom/android/browser/SelectDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/browser/SelectDialog$3;->this$0:Lcom/android/browser/SelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/browser/SelectDialog$3;->this$0:Lcom/android/browser/SelectDialog;

    iget-object v1, v1, Lcom/android/browser/WebDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, selection:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/SelectDialog$3;->this$0:Lcom/android/browser/SelectDialog;

    iget-object v1, v1, Lcom/android/browser/WebDialog;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-static {v1, v0}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/android/browser/SelectDialog$3;->this$0:Lcom/android/browser/SelectDialog;

    iget-object v1, v1, Lcom/android/browser/WebDialog;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->closeDialogs()V

    .line 63
    return-void
.end method
