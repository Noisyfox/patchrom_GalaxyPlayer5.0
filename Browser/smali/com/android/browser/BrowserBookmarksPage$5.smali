.class Lcom/android/browser/BrowserBookmarksPage$5;
.super Ljava/lang/Object;
.source "BrowserBookmarksPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserBookmarksPage;->displayRemoveBookmarkDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserBookmarksPage;

.field final synthetic val$deletePos:I


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserBookmarksPage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksPage$5;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    iput p2, p0, Lcom/android/browser/BrowserBookmarksPage$5;->val$deletePos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage$5;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    iget v1, p0, Lcom/android/browser/BrowserBookmarksPage$5;->val$deletePos:I

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->deleteBookmark(I)V

    .line 1144
    return-void
.end method
