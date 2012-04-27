.class Lcom/android/browser/BrowserActivity$23;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5098
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$23;->this$0:Lcom/android/browser/BrowserActivity;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$23;->val$view:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 5101
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$23;->this$0:Lcom/android/browser/BrowserActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$2602(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 5107
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$23;->this$0:Lcom/android/browser/BrowserActivity;

    #getter for: Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;
    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$400(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$23;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTabFromView(Landroid/webkit/WebView;)Lcom/android/browser/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5108
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$23;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$23;->this$0:Lcom/android/browser/BrowserActivity;

    #getter for: Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;
    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$400(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$23;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lcom/android/browser/TabControl;->getTabFromView(Landroid/webkit/WebView;)Lcom/android/browser/Tab;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lcom/android/browser/BrowserActivity;->showPageInfo(Lcom/android/browser/Tab;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/browser/BrowserActivity;->access$2500(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;Z)V

    .line 5110
    :cond_0
    return-void
.end method
