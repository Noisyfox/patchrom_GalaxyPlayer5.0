.class Lcom/android/browser/BrowserDownloadPage$ChangeObserver$1;
.super Ljava/lang/Object;
.source "BrowserDownloadPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserDownloadPage$ChangeObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/BrowserDownloadPage$ChangeObserver;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserDownloadPage$ChangeObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/browser/BrowserDownloadPage$ChangeObserver$1;->this$1:Lcom/android/browser/BrowserDownloadPage$ChangeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadPage$ChangeObserver$1;->this$1:Lcom/android/browser/BrowserDownloadPage$ChangeObserver;

    iget-object v0, v0, Lcom/android/browser/BrowserDownloadPage$ChangeObserver;->this$0:Lcom/android/browser/BrowserDownloadPage;

    invoke-virtual {v0}, Lcom/android/browser/BrowserDownloadPage;->closeContextMenu()V

    .line 320
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadPage$ChangeObserver$1;->this$1:Lcom/android/browser/BrowserDownloadPage$ChangeObserver;

    iget-object v0, v0, Lcom/android/browser/BrowserDownloadPage$ChangeObserver;->this$0:Lcom/android/browser/BrowserDownloadPage;

    iget-object v1, p0, Lcom/android/browser/BrowserDownloadPage$ChangeObserver$1;->this$1:Lcom/android/browser/BrowserDownloadPage$ChangeObserver;

    iget-object v1, v1, Lcom/android/browser/BrowserDownloadPage$ChangeObserver;->this$0:Lcom/android/browser/BrowserDownloadPage;

    #getter for: Lcom/android/browser/BrowserDownloadPage;->mSelectedView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/browser/BrowserDownloadPage;->access$500(Lcom/android/browser/BrowserDownloadPage;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadPage;->openContextMenu(Landroid/view/View;)V

    .line 321
    return-void
.end method
