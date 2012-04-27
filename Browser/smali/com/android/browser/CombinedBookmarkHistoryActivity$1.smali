.class Lcom/android/browser/CombinedBookmarkHistoryActivity$1;
.super Landroid/os/AsyncTask;
.source "CombinedBookmarkHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/CombinedBookmarkHistoryActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/android/browser/CombinedBookmarkHistoryActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/CombinedBookmarkHistoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/browser/CombinedBookmarkHistoryActivity$1;->this$0:Lcom/android/browser/CombinedBookmarkHistoryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/CombinedBookmarkHistoryActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "v"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryActivity$1;->this$0:Lcom/android/browser/CombinedBookmarkHistoryActivity;

    invoke-virtual {v0}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "favicon is NULL"

    invoke-static {}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getIconListenerSet()Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Browser;->requestAllIcons(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V

    .line 141
    const/4 v0, 0x0

    return-object v0
.end method
