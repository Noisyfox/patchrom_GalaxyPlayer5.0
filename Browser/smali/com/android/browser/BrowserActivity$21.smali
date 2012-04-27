.class Lcom/android/browser/BrowserActivity$21;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->showSSLCertificate(Lcom/android/browser/Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;

.field final synthetic val$tab:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5006
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$21;->this$0:Lcom/android/browser/BrowserActivity;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$21;->val$tab:Lcom/android/browser/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 5009
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$21;->this$0:Lcom/android/browser/BrowserActivity;

    #setter for: Lcom/android/browser/BrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$2302(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 5010
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$21;->this$0:Lcom/android/browser/BrowserActivity;

    #setter for: Lcom/android/browser/BrowserActivity;->mSSLCertificateView:Lcom/android/browser/Tab;
    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$2402(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)Lcom/android/browser/Tab;

    .line 5012
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$21;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$21;->val$tab:Lcom/android/browser/Tab;

    const/4 v2, 0x0

    #calls: Lcom/android/browser/BrowserActivity;->showPageInfo(Lcom/android/browser/Tab;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/browser/BrowserActivity;->access$2500(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;Z)V

    .line 5013
    return-void
.end method
