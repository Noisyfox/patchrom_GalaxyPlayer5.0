.class public Lcom/android/browser/BookmarkListItem;
.super Ljava/lang/Object;
.source "BookmarkListItem.java"


# instance fields
.field private created:J

.field private date:J

.field private favicon:[B

.field private folder:I

.field private id:I

.field private thumbnail:[B

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private visits:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IJJLjava/lang/String;I[B[B)V
    .locals 0
    .parameter "id"
    .parameter "url"
    .parameter "visits"
    .parameter "date"
    .parameter "created"
    .parameter "title"
    .parameter "folder"
    .parameter "thumbnail"
    .parameter "favicon"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/browser/BookmarkListItem;->setId(I)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/android/browser/BookmarkListItem;->setUrl(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p3}, Lcom/android/browser/BookmarkListItem;->setVisits(I)V

    .line 42
    invoke-virtual {p0, p4, p5}, Lcom/android/browser/BookmarkListItem;->setDate(J)V

    .line 43
    invoke-virtual {p0, p6, p7}, Lcom/android/browser/BookmarkListItem;->setCreated(J)V

    .line 44
    invoke-virtual {p0, p8}, Lcom/android/browser/BookmarkListItem;->setTitle(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p9}, Lcom/android/browser/BookmarkListItem;->setFolder(I)V

    .line 46
    invoke-virtual {p0, p10}, Lcom/android/browser/BookmarkListItem;->setThumbnail([B)V

    .line 47
    invoke-virtual {p0, p11}, Lcom/android/browser/BookmarkListItem;->setFavicon([B)V

    .line 48
    return-void
.end method


# virtual methods
.method public getFavicon()[B
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/browser/BookmarkListItem;->favicon:[B

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/browser/BookmarkListItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/BookmarkListItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCreated(J)V
    .locals 0
    .parameter "created"

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/android/browser/BookmarkListItem;->created:J

    .line 88
    return-void
.end method

.method public setDate(J)V
    .locals 0
    .parameter "date"

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/android/browser/BookmarkListItem;->date:J

    .line 80
    return-void
.end method

.method public setFavicon([B)V
    .locals 0
    .parameter "favicon"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/browser/BookmarkListItem;->favicon:[B

    .line 121
    return-void
.end method

.method public setFolder(I)V
    .locals 0
    .parameter "folder"

    .prologue
    .line 103
    iput p1, p0, Lcom/android/browser/BookmarkListItem;->folder:I

    .line 104
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/browser/BookmarkListItem;->id:I

    .line 56
    return-void
.end method

.method public setThumbnail([B)V
    .locals 0
    .parameter "thumbnail"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/browser/BookmarkListItem;->thumbnail:[B

    .line 113
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/browser/BookmarkListItem;->title:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/browser/BookmarkListItem;->url:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setVisits(I)V
    .locals 0
    .parameter "visits"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/browser/BookmarkListItem;->visits:I

    .line 72
    return-void
.end method
