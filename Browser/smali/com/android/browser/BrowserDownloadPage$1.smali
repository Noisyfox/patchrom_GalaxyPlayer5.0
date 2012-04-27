.class Lcom/android/browser/BrowserDownloadPage$1;
.super Ljava/lang/Object;
.source "BrowserDownloadPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserDownloadPage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserDownloadPage;

.field final synthetic val$groupToShow:I


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserDownloadPage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/browser/BrowserDownloadPage$1;->this$0:Lcom/android/browser/BrowserDownloadPage;

    iput p2, p0, Lcom/android/browser/BrowserDownloadPage$1;->val$groupToShow:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadPage$1;->this$0:Lcom/android/browser/BrowserDownloadPage;

    #getter for: Lcom/android/browser/BrowserDownloadPage;->mDownloadAdapter:Lcom/android/browser/BrowserDownloadAdapter;
    invoke-static {v0}, Lcom/android/browser/BrowserDownloadPage;->access$000(Lcom/android/browser/BrowserDownloadPage;)Lcom/android/browser/BrowserDownloadAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserDownloadAdapter;->getGroupCount()I

    move-result v0

    iget v1, p0, Lcom/android/browser/BrowserDownloadPage$1;->val$groupToShow:I

    if-le v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadPage$1;->this$0:Lcom/android/browser/BrowserDownloadPage;

    #getter for: Lcom/android/browser/BrowserDownloadPage;->mListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/android/browser/BrowserDownloadPage;->access$100(Lcom/android/browser/BrowserDownloadPage;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/BrowserDownloadPage$1;->val$groupToShow:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 156
    :cond_0
    return-void
.end method
