.class Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;
.super Ljava/lang/Object;
.source "CombinedBookmarkHistoryActivity.java"

# interfaces
.implements Landroid/webkit/WebIconDatabase$IconListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/CombinedBookmarkHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IconListenerSet"
.end annotation


# instance fields
.field private mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/webkit/WebIconDatabase$IconListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUrlsToIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;->mUrlsToIcons:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;->mListeners:Ljava/util/Vector;

    .line 66
    return-void
.end method


# virtual methods
.method public addListener(Landroid/webkit/WebIconDatabase$IconListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public getFavicon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "url"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;->mUrlsToIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public onReceivedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "url"
    .parameter "icon"

    .prologue
    .line 68
    iget-object v2, p0, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;->mUrlsToIcons:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v2, p0, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebIconDatabase$IconListener;

    .line 70
    .local v1, listener:Landroid/webkit/WebIconDatabase$IconListener;
    invoke-interface {v1, p1, p2}, Landroid/webkit/WebIconDatabase$IconListener;->onReceivedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 72
    .end local v1           #listener:Landroid/webkit/WebIconDatabase$IconListener;
    :cond_0
    return-void
.end method

.method public removeListener(Landroid/webkit/WebIconDatabase$IconListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method
