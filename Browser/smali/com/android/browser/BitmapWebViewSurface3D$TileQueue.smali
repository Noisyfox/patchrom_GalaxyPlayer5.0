.class Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;
.super Ljava/lang/Object;
.source "BitmapWebViewSurface3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BitmapWebViewSurface3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TileQueue"
.end annotation


# instance fields
.field mEnd:I

.field mSize:I

.field mStart:I

.field mTiles:[Lcom/android/browser/BitmapWebView$Tile;

.field final synthetic this$0:Lcom/android/browser/BitmapWebViewSurface3D;


# direct methods
.method constructor <init>(Lcom/android/browser/BitmapWebViewSurface3D;I)V
    .locals 4
    .parameter
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 188
    iput-object p1, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-array v1, p2, [Lcom/android/browser/BitmapWebView$Tile;

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mTiles:[Lcom/android/browser/BitmapWebView$Tile;

    .line 190
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 191
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mTiles:[Lcom/android/browser/BitmapWebView$Tile;

    new-instance v2, Lcom/android/browser/BitmapWebViewSurface3D$MyTile;

    invoke-direct {v2, p1}, Lcom/android/browser/BitmapWebViewSurface3D$MyTile;-><init>(Lcom/android/browser/BitmapWebViewSurface3D;)V

    aput-object v2, v1, v0

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    iput v3, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mStart:I

    .line 193
    iput v3, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mEnd:I

    .line 194
    iput p2, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mSize:I

    .line 195
    return-void
.end method


# virtual methods
.method declared-synchronized destroy()V
    .locals 2

    .prologue
    .line 247
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mSize:I

    if-ge v0, v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mTiles:[Lcom/android/browser/BitmapWebView$Tile;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/browser/BitmapWebView$Tile;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_0
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getNextTile()Lcom/android/browser/BitmapWebView$Tile;
    .locals 3

    .prologue
    .line 199
    monitor-enter p0

    const/4 v0, 0x0

    .line 201
    .local v0, tile:Lcom/android/browser/BitmapWebView$Tile;
    :try_start_0
    iget v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mEnd:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mSize:I

    rem-int/2addr v1, v2

    iget v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mStart:I

    if-eq v1, v2, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mTiles:[Lcom/android/browser/BitmapWebView$Tile;

    iget v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mEnd:I

    aget-object v0, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 207
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized pop()Lcom/android/browser/BitmapWebView$Tile;
    .locals 3

    .prologue
    .line 226
    monitor-enter p0

    const/4 v0, 0x0

    .line 227
    .local v0, tile:Lcom/android/browser/BitmapWebView$Tile;
    :try_start_0
    iget v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mEnd:I

    iget v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mStart:I

    if-eq v1, v2, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mTiles:[Lcom/android/browser/BitmapWebView$Tile;

    iget v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mStart:I

    aget-object v0, v1, v2

    .line 231
    iget v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mStart:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mSize:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mStart:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 236
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized push(Lcom/android/browser/BitmapWebView$Tile;)V
    .locals 2
    .parameter "tile"

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mEnd:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mSize:I

    rem-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mStart:I

    if-eq v0, v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mTiles:[Lcom/android/browser/BitmapWebView$Tile;

    iget v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mEnd:I

    aput-object p1, v0, v1

    .line 215
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mEnd:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mSize:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mEnd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    .line 219
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/browser/BitmapWebViewSurface3D;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "push tile failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TileQueue push tile failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized reset()V
    .locals 1

    .prologue
    .line 241
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mStart:I

    .line 242
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->mEnd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
