.class Lcom/android/browser/BrowserBookmarksPage$1;
.super Landroid/os/AsyncTask;
.source "BrowserBookmarksPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserBookmarksPage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserBookmarksPage;

.field final synthetic val$createShortcut:Z

.field final synthetic val$mostVisited:Z

.field final synthetic val$thumbnail:Landroid/graphics/Bitmap;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserBookmarksPage;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksPage$1;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    iput-object p2, p0, Lcom/android/browser/BrowserBookmarksPage$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/browser/BrowserBookmarksPage$1;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/browser/BrowserBookmarksPage$1;->val$thumbnail:Landroid/graphics/Bitmap;

    iput-boolean p5, p0, Lcom/android/browser/BrowserBookmarksPage$1;->val$createShortcut:Z

    iput-boolean p6, p0, Lcom/android/browser/BrowserBookmarksPage$1;->val$mostVisited:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 374
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "unused"

    .prologue
    .line 377
    new-instance v0, Lcom/android/browser/BrowserBookmarksAdapter;

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$1;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksPage$1;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage$1;->val$title:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage$1;->val$thumbnail:Landroid/graphics/Bitmap;

    iget-boolean v5, p0, Lcom/android/browser/BrowserBookmarksPage$1;->val$createShortcut:Z

    iget-boolean v6, p0, Lcom/android/browser/BrowserBookmarksPage$1;->val$mostVisited:Z

    invoke-direct/range {v0 .. v6}, Lcom/android/browser/BrowserBookmarksAdapter;-><init>(Lcom/android/browser/BrowserBookmarksPage;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)V

    .line 384
    .local v0, adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$1;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    #getter for: Lcom/android/browser/BrowserBookmarksPage;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$000(Lcom/android/browser/BrowserBookmarksPage;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 385
    const/4 v1, 0x0

    return-object v1
.end method
