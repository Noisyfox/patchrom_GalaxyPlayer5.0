.class public Lcom/miui/camera/gallery/ImageListUber;
.super Ljava/lang/Object;
.source "ImageListUber.java"

# interfaces
.implements Lcom/miui/camera/gallery/IImageList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/camera/gallery/ImageListUber$1;,
        Lcom/miui/camera/gallery/ImageListUber$MergeSlot;,
        Lcom/miui/camera/gallery/ImageListUber$AscendingComparator;,
        Lcom/miui/camera/gallery/ImageListUber$DescendingComparator;
    }
.end annotation


# instance fields
.field private mLastListIndex:I

.field private final mQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/miui/camera/gallery/ImageListUber$MergeSlot;",
            ">;"
        }
    .end annotation
.end field

.field private final mSkipCounts:[I

.field private mSkipList:[J

.field private mSkipListSize:I

.field private final mSubList:[Lcom/miui/camera/gallery/IImageList;


# direct methods
.method public constructor <init>([Lcom/miui/camera/gallery/IImageList;I)V
    .locals 8
    .parameter "sublist"
    .parameter "sort"

    .prologue
    const/4 v7, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, [Lcom/miui/camera/gallery/IImageList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/miui/camera/gallery/IImageList;

    iput-object v4, p0, Lcom/miui/camera/gallery/ImageListUber;->mSubList:[Lcom/miui/camera/gallery/IImageList;

    .line 35
    new-instance v4, Ljava/util/PriorityQueue;

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-ne p2, v6, :cond_1

    new-instance v6, Lcom/miui/camera/gallery/ImageListUber$AscendingComparator;

    invoke-direct {v6, v7}, Lcom/miui/camera/gallery/ImageListUber$AscendingComparator;-><init>(Lcom/miui/camera/gallery/ImageListUber$1;)V

    :goto_0
    invoke-direct {v4, v5, v6}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v4, p0, Lcom/miui/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    .line 39
    const/16 v4, 0x10

    new-array v4, v4, [J

    iput-object v4, p0, Lcom/miui/camera/gallery/ImageListUber;->mSkipList:[J

    .line 40
    const/4 v4, 0x0

    iput v4, p0, Lcom/miui/camera/gallery/ImageListUber;->mSkipListSize:I

    .line 41
    iget-object v4, p0, Lcom/miui/camera/gallery/ImageListUber;->mSubList:[Lcom/miui/camera/gallery/IImageList;

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/miui/camera/gallery/ImageListUber;->mSkipCounts:[I

    .line 42
    const/4 v4, -0x1

    iput v4, p0, Lcom/miui/camera/gallery/ImageListUber;->mLastListIndex:I

    .line 43
    iget-object v4, p0, Lcom/miui/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->clear()V

    .line 44
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/miui/camera/gallery/ImageListUber;->mSubList:[Lcom/miui/camera/gallery/IImageList;

    array-length v2, v4

    .local v2, n:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 45
    iget-object v4, p0, Lcom/miui/camera/gallery/ImageListUber;->mSubList:[Lcom/miui/camera/gallery/IImageList;

    aget-object v1, v4, v0

    .line 46
    .local v1, list:Lcom/miui/camera/gallery/IImageList;
    new-instance v3, Lcom/miui/camera/gallery/ImageListUber$MergeSlot;

    invoke-direct {v3, v1, v0}, Lcom/miui/camera/gallery/ImageListUber$MergeSlot;-><init>(Lcom/miui/camera/gallery/IImageList;I)V

    .line 47
    .local v3, slot:Lcom/miui/camera/gallery/ImageListUber$MergeSlot;
    invoke-virtual {v3}, Lcom/miui/camera/gallery/ImageListUber$MergeSlot;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v4, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 35
    .end local v0           #i:I
    .end local v1           #list:Lcom/miui/camera/gallery/IImageList;
    .end local v2           #n:I
    .end local v3           #slot:Lcom/miui/camera/gallery/ImageListUber$MergeSlot;
    :cond_1
    new-instance v6, Lcom/miui/camera/gallery/ImageListUber$DescendingComparator;

    invoke-direct {v6, v7}, Lcom/miui/camera/gallery/ImageListUber$DescendingComparator;-><init>(Lcom/miui/camera/gallery/ImageListUber$1;)V

    goto :goto_0

    .line 49
    .restart local v0       #i:I
    .restart local v2       #n:I
    :cond_2
    return-void
.end method

.method private nextMergeSlot()Lcom/miui/camera/gallery/ImageListUber$MergeSlot;
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    const/4 v5, 0x0

    .line 108
    iget-object v3, p0, Lcom/miui/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/camera/gallery/ImageListUber$MergeSlot;

    .line 109
    .local v1, slot:Lcom/miui/camera/gallery/ImageListUber$MergeSlot;
    if-nez v1, :cond_0

    const/4 v3, 0x0

    .line 122
    :goto_0
    return-object v3

    .line 110
    :cond_0
    iget v3, v1, Lcom/miui/camera/gallery/ImageListUber$MergeSlot;->mListIndex:I

    iget v4, p0, Lcom/miui/camera/gallery/ImageListUber;->mLastListIndex:I

    if-ne v3, v4, :cond_1

    .line 111
    iget v3, p0, Lcom/miui/camera/gallery/ImageListUber;->mSkipListSize:I

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .line 112
    .local v0, lastIndex:I
    iget-object v3, p0, Lcom/miui/camera/gallery/ImageListUber;->mSkipList:[J

    aget-wide v4, v3, v0

    add-long/2addr v4, v8

    aput-wide v4, v3, v0

    .end local v0           #lastIndex:I
    :goto_1
    move-object v3, v1

    .line 122
    goto :goto_0

    .line 114
    :cond_1
    iget v3, v1, Lcom/miui/camera/gallery/ImageListUber$MergeSlot;->mListIndex:I

    iput v3, p0, Lcom/miui/camera/gallery/ImageListUber;->mLastListIndex:I

    .line 115
    iget-object v3, p0, Lcom/miui/camera/gallery/ImageListUber;->mSkipList:[J

    array-length v3, v3

    iget v4, p0, Lcom/miui/camera/gallery/ImageListUber;->mSkipListSize:I

    if-ne v3, v4, :cond_2

    .line 116
    iget v3, p0, Lcom/miui/camera/gallery/ImageListUber;->mSkipListSize:I

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [J

    .line 117
    .local v2, temp:[J
    iget-object v3, p0, Lcom/miui/camera/gallery/ImageListUber;->mSkipList:[J

    iget v4, p0, Lcom/miui/camera/gallery/ImageListUber;->mSkipListSize:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iput-object v2, p0, Lcom/miui/camera/gallery/ImageListUber;->mSkipList:[J

    .line 120
    .end local v2           #temp:[J
    :cond_2
    iget-object v3, p0, Lcom/miui/camera/gallery/ImageListUber;->mSkipList:[J

    iget v4, p0, Lcom/miui/camera/gallery/ImageListUber;->mSkipListSize:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/miui/camera/gallery/ImageListUber;->mSkipListSize:I

    iget v5, p0, Lcom/miui/camera/gallery/ImageListUber;->mLastListIndex:I

    int-to-long v5, v5

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v5, v8

    aput-wide v5, v3, v4

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 175
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/miui/camera/gallery/ImageListUber;->mSubList:[Lcom/miui/camera/gallery/IImageList;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 176
    iget-object v2, p0, Lcom/miui/camera/gallery/ImageListUber;->mSubList:[Lcom/miui/camera/gallery/IImageList;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/miui/camera/gallery/IImageList;->close()V

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 6

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, count:I
    iget-object v0, p0, Lcom/miui/camera/gallery/ImageListUber;->mSubList:[Lcom/miui/camera/gallery/IImageList;

    .local v0, arr$:[Lcom/miui/camera/gallery/IImageList;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 54
    .local v4, subList:Lcom/miui/camera/gallery/IImageList;
    invoke-interface {v4}, Lcom/miui/camera/gallery/IImageList;->getCount()I

    move-result v5

    add-int/2addr v1, v5

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v4           #subList:Lcom/miui/camera/gallery/IImageList;
    :cond_0
    return v1
.end method

.method public getImageAt(I)Lcom/miui/camera/gallery/IImage;
    .locals 14
    .parameter "index"

    .prologue
    .line 64
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/camera/gallery/ImageListUber;->getCount()I

    move-result v11

    if-le p1, v11, :cond_1

    .line 65
    :cond_0
    new-instance v11, Ljava/lang/IndexOutOfBoundsException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "index "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " out of range max is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/miui/camera/gallery/ImageListUber;->getCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 69
    :cond_1
    iget-object v5, p0, Lcom/miui/camera/gallery/ImageListUber;->mSkipCounts:[I

    .line 72
    .local v5, skipCounts:[I
    const/4 v11, 0x0

    invoke-static {v5, v11}, Ljava/util/Arrays;->fill([II)V

    .line 78
    const/4 v4, 0x0

    .line 82
    .local v4, skipCount:I
    const/4 v0, 0x0

    .local v0, i:I
    iget v1, p0, Lcom/miui/camera/gallery/ImageListUber;->mSkipListSize:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_5

    .line 83
    iget-object v11, p0, Lcom/miui/camera/gallery/ImageListUber;->mSkipList:[J

    aget-wide v8, v11, v0

    .line 85
    .local v8, v:J
    const-wide/16 v11, -0x1

    and-long/2addr v11, v8

    long-to-int v2, v11

    .line 86
    .local v2, offset:I
    const/16 v11, 0x20

    shr-long v11, v8, v11

    long-to-int v10, v11

    .line 87
    .local v10, which:I
    add-int v11, v4, v2

    if-le v11, p1, :cond_2

    .line 88
    iget-object v11, p0, Lcom/miui/camera/gallery/ImageListUber;->mSkipCounts:[I

    aget v11, v11, v10

    sub-int v12, p1, v4

    add-int v7, v11, v12

    .line 89
    .local v7, subindex:I
    iget-object v11, p0, Lcom/miui/camera/gallery/ImageListUber;->mSubList:[Lcom/miui/camera/gallery/IImageList;

    aget-object v11, v11, v10

    invoke-interface {v11, v7}, Lcom/miui/camera/gallery/IImageList;->getImageAt(I)Lcom/miui/camera/gallery/IImage;

    move-result-object v11

    .line 101
    .end local v2           #offset:I
    .end local v7           #subindex:I
    .end local v8           #v:J
    .end local v10           #which:I
    :goto_1
    return-object v11

    .line 91
    .restart local v2       #offset:I
    .restart local v8       #v:J
    .restart local v10       #which:I
    :cond_2
    add-int/2addr v4, v2

    .line 92
    iget-object v11, p0, Lcom/miui/camera/gallery/ImageListUber;->mSkipCounts:[I

    aget v12, v11, v10

    add-int/2addr v12, v2

    aput v12, v11, v10

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v2           #offset:I
    .end local v8           #v:J
    .end local v10           #which:I
    .local v6, slot:Lcom/miui/camera/gallery/ImageListUber$MergeSlot;
    :cond_3
    invoke-virtual {v6}, Lcom/miui/camera/gallery/ImageListUber$MergeSlot;->next()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/miui/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v11, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 96
    .end local v6           #slot:Lcom/miui/camera/gallery/ImageListUber$MergeSlot;
    :cond_5
    invoke-direct {p0}, Lcom/miui/camera/gallery/ImageListUber;->nextMergeSlot()Lcom/miui/camera/gallery/ImageListUber$MergeSlot;

    move-result-object v6

    .line 97
    .restart local v6       #slot:Lcom/miui/camera/gallery/ImageListUber$MergeSlot;
    if-nez v6, :cond_6

    const/4 v11, 0x0

    goto :goto_1

    .line 98
    :cond_6
    if-ne v4, p1, :cond_3

    .line 99
    iget-object v3, v6, Lcom/miui/camera/gallery/ImageListUber$MergeSlot;->mImage:Lcom/miui/camera/gallery/IImage;

    .line 100
    .local v3, result:Lcom/miui/camera/gallery/IImage;
    invoke-virtual {v6}, Lcom/miui/camera/gallery/ImageListUber$MergeSlot;->next()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/miui/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v11, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object v11, v3

    .line 101
    goto :goto_1
.end method
