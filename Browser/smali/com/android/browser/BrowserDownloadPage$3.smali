.class Lcom/android/browser/BrowserDownloadPage$3;
.super Ljava/lang/Object;
.source "BrowserDownloadPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserDownloadPage;->promptCancelAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserDownloadPage;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserDownloadPage;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/browser/BrowserDownloadPage$3;->this$0:Lcom/android/browser/BrowserDownloadPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadPage$3;->this$0:Lcom/android/browser/BrowserDownloadPage;

    #calls: Lcom/android/browser/BrowserDownloadPage;->cancelAllDownloads()V
    invoke-static {v0}, Lcom/android/browser/BrowserDownloadPage;->access$600(Lcom/android/browser/BrowserDownloadPage;)V

    .line 465
    return-void
.end method
