.class Lcom/android/browser/HistoryItem$2;
.super Ljava/lang/Object;
.source "HistoryItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/HistoryItem;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/HistoryItem;


# direct methods
.method constructor <init>(Lcom/android/browser/HistoryItem;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/browser/HistoryItem$2;->this$0:Lcom/android/browser/HistoryItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 57
    if-eqz p2, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/browser/HistoryItem$2;->this$0:Lcom/android/browser/HistoryItem;

    #getter for: Lcom/android/browser/HistoryItem;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/browser/HistoryItem;->access$000(Lcom/android/browser/HistoryItem;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/HistoryItem$2;->this$0:Lcom/android/browser/HistoryItem;

    #getter for: Lcom/android/browser/HistoryItem;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/browser/HistoryItem;->access$100(Lcom/android/browser/HistoryItem;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/HistoryItem$2;->this$0:Lcom/android/browser/HistoryItem;

    iget-object v2, v2, Lcom/android/browser/BookmarkItem;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/browser/HistoryItem$2;->this$0:Lcom/android/browser/HistoryItem;

    invoke-virtual {v3}, Lcom/android/browser/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/browser/Bookmarks;->addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V

    .line 62
    iget-object v0, p0, Lcom/android/browser/HistoryItem$2;->this$0:Lcom/android/browser/HistoryItem;

    iget-object v0, v0, Lcom/android/browser/BookmarkItem;->mUrl:Ljava/lang/String;

    const-string v1, "history"

    invoke-static {v0, v1}, Lcom/android/browser/LogTag;->logBookmarkAdded(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/browser/HistoryItem$2;->this$0:Lcom/android/browser/HistoryItem;

    #getter for: Lcom/android/browser/HistoryItem;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/browser/HistoryItem;->access$200(Lcom/android/browser/HistoryItem;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/HistoryItem$2;->this$0:Lcom/android/browser/HistoryItem;

    #getter for: Lcom/android/browser/HistoryItem;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/browser/HistoryItem;->access$300(Lcom/android/browser/HistoryItem;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/HistoryItem$2;->this$0:Lcom/android/browser/HistoryItem;

    iget-object v2, v2, Lcom/android/browser/BookmarkItem;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/browser/HistoryItem$2;->this$0:Lcom/android/browser/HistoryItem;

    invoke-virtual {v3}, Lcom/android/browser/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/browser/Bookmarks;->removeAllFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
