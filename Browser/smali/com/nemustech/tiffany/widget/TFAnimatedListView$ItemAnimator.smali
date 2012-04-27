.class public Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;
.super Ljava/lang/Object;
.source "TFAnimatedListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAnimatedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ItemAnimator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mRetainAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field mTempItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 726
    const-class v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)V
    .locals 1
    .parameter

    .prologue
    .line 726
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 737
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    .line 740
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    .line 743
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    .line 746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public forceFinish()V
    .locals 2

    .prologue
    .line 1125
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->removeAll()V

    .line 1126
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1128
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIsAnimating:Z
    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$500(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    const/4 v1, 0x0

    #setter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$502(Lcom/nemustech/tiffany/widget/TFAnimatedListView;Z)Z

    .line 1130
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimationListener:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$600(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimationListener:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$600(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;->OnItemAnimationStop()V

    .line 1133
    :cond_0
    return-void
.end method

.method public getDeleteItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .locals 2
    .parameter "position"

    .prologue
    .line 763
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    return-object p0
.end method

.method public getItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .locals 2
    .parameter "position"

    .prologue
    .line 755
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    return-object p0
.end method

.method public getRetainItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .locals 2
    .parameter "position"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    return-object p0
.end method

.method public putDeleteItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V
    .locals 1
    .parameter "position"
    .parameter "a"

    .prologue
    .line 792
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 793
    return-void
.end method

.method public putItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V
    .locals 1
    .parameter "position"
    .parameter "a"

    .prologue
    .line 772
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 773
    return-void
.end method

.method public putRetainItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V
    .locals 1
    .parameter "position"
    .parameter "a"

    .prologue
    .line 782
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 783
    return-void
.end method

.method public removeAll()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 973
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mUseAnimationCache:Z
    invoke-static {v5}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$300(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 974
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 975
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 976
    .local v3, aniKey:I
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    .line 977
    .local v1, a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v1, :cond_0

    .line 978
    instance-of v5, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    if-eqz v5, :cond_0

    .line 979
    move-object v0, v1

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object v2, v0

    .line 980
    .local v2, ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 981
    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 982
    #setter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v2, v6}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$402(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 974
    .end local v2           #ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 988
    .end local v1           #a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v3           #aniKey:I
    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 989
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 990
    .restart local v3       #aniKey:I
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    .line 991
    .restart local v1       #a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v1, :cond_2

    .line 992
    instance-of v5, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    if-eqz v5, :cond_2

    .line 993
    move-object v0, v1

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object v2, v0

    .line 994
    .restart local v2       #ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 995
    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 996
    #setter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v2, v6}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$402(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 988
    .end local v2           #ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1002
    .end local v1           #a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v3           #aniKey:I
    :cond_3
    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 1003
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1004
    .restart local v3       #aniKey:I
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    .line 1005
    .restart local v1       #a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v1, :cond_4

    .line 1006
    instance-of v5, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    if-eqz v5, :cond_4

    .line 1007
    move-object v0, v1

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object v2, v0

    .line 1008
    .restart local v2       #ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1009
    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 1010
    #setter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v2, v6}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$402(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1002
    .end local v2           #ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1017
    .end local v1           #a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v3           #aniKey:I
    .end local v4           #i:I
    :cond_5
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 1018
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 1019
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 1021
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-gtz v5, :cond_6

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-gtz v5, :cond_6

    .line 1023
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    iget-object v5, v5, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v5}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 1024
    :cond_6
    return-void
.end method

.method public removeDeleteItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V
    .locals 5
    .parameter "a"

    .prologue
    .line 853
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v2

    .line 854
    .local v2, i:I
    if-ltz v2, :cond_1

    .line 855
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mUseAnimationCache:Z
    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$300(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 856
    instance-of v3, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    if-eqz v3, :cond_0

    .line 857
    move-object v0, p1

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object v1, v0

    .line 858
    .local v1, ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 859
    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 860
    const/4 v3, 0x0

    #setter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$402(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 864
    .end local v1           #ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 867
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 869
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    iget-object v3, v3, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 870
    :cond_2
    return-void
.end method

.method public removeItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V
    .locals 5
    .parameter "a"

    .prologue
    .line 801
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v2

    .line 802
    .local v2, i:I
    if-ltz v2, :cond_1

    .line 803
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mUseAnimationCache:Z
    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$300(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 804
    instance-of v3, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    if-eqz v3, :cond_0

    .line 805
    move-object v0, p1

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object v1, v0

    .line 806
    .local v1, ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 807
    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 808
    const/4 v3, 0x0

    #setter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$402(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 812
    .end local v1           #ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 815
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 817
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    iget-object v3, v3, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 818
    :cond_2
    return-void
.end method

.method public removeRetainItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V
    .locals 5
    .parameter "a"

    .prologue
    .line 827
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v2

    .line 828
    .local v2, i:I
    if-ltz v2, :cond_1

    .line 829
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mUseAnimationCache:Z
    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$300(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 830
    instance-of v3, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    if-eqz v3, :cond_0

    .line 831
    move-object v0, p1

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object v1, v0

    .line 832
    .local v1, ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 833
    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 834
    const/4 v3, 0x0

    #setter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$402(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 838
    .end local v1           #ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 841
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 843
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    iget-object v3, v3, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 844
    :cond_2
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1047
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1048
    .local v3, curTime:J
    const/4 v1, 0x1

    .line 1049
    .local v1, allFinished:Z
    const/4 v2, 0x0

    .line 1051
    .local v2, animationCount:I
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1053
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1054
    .local v10, size:I
    add-int/2addr v2, v10

    .line 1055
    sub-int v6, v10, v12

    .local v6, i:I
    :goto_0
    if-ltz v6, :cond_2

    .line 1056
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 1057
    .local v9, position:I
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v13}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    .line 1058
    .local v8, ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    sget-boolean v11, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->$assertionsDisabled:Z

    if-nez v11, :cond_0

    if-nez v8, :cond_0

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 1059
    :cond_0
    invoke-virtual {v8, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->computeAnimation(J)V

    .line 1060
    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->isFinished()Z

    move-result v5

    .line 1061
    .local v5, finished:Z
    and-int/2addr v1, v5

    .line 1062
    if-eqz v5, :cond_1

    .line 1063
    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->getRetainOnFinish()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1064
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1069
    .end local v5           #finished:Z
    .end local v8           #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v9           #position:I
    :cond_2
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1070
    add-int/2addr v2, v10

    .line 1071
    sub-int v6, v10, v12

    :goto_1
    if-ltz v6, :cond_5

    .line 1072
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 1073
    .restart local v9       #position:I
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v13}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    .line 1074
    .restart local v8       #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    sget-boolean v11, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->$assertionsDisabled:Z

    if-nez v11, :cond_3

    if-nez v8, :cond_3

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 1075
    :cond_3
    invoke-virtual {v8, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->computeAnimation(J)V

    .line 1076
    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->isFinished()Z

    move-result v5

    .line 1077
    .restart local v5       #finished:Z
    and-int/2addr v1, v5

    .line 1078
    if-eqz v5, :cond_4

    .line 1079
    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->getRetainOnFinish()Z

    move-result v11

    if-nez v11, :cond_4

    .line 1080
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 1085
    .end local v5           #finished:Z
    .end local v8           #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v9           #position:I
    :cond_5
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1086
    add-int/2addr v2, v10

    .line 1087
    sub-int v6, v10, v12

    :goto_2
    if-ltz v6, :cond_8

    .line 1088
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 1089
    .restart local v9       #position:I
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v13}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    .line 1090
    .restart local v8       #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    sget-boolean v11, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->$assertionsDisabled:Z

    if-nez v11, :cond_6

    if-nez v8, :cond_6

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 1091
    :cond_6
    invoke-virtual {v8, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->computeAnimation(J)V

    .line 1092
    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->isFinished()Z

    move-result v5

    .line 1093
    .restart local v5       #finished:Z
    and-int/2addr v1, v5

    .line 1094
    if-eqz v5, :cond_7

    .line 1095
    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->getRetainOnFinish()Z

    move-result v11

    if-nez v11, :cond_7

    .line 1096
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1087
    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 1101
    .end local v5           #finished:Z
    .end local v8           #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v9           #position:I
    :cond_8
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    .line 1102
    .local v0, aToDelete:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->removeItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    .line 1103
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->removeRetainItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    .line 1104
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->removeDeleteItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    goto :goto_3

    .line 1107
    .end local v0           #aToDelete:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    :cond_9
    if-nez v2, :cond_a

    .line 1108
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    iget-object v11, v11, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v11}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 1110
    :cond_a
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1112
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-virtual {v11}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->invalidate()V

    .line 1113
    if-nez v1, :cond_c

    .line 1114
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-virtual {v11, p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->post(Ljava/lang/Runnable;)Z

    .line 1122
    :cond_b
    :goto_4
    return-void

    .line 1116
    :cond_c
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIsAnimating:Z
    invoke-static {v11}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$500(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1117
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    const/4 v12, 0x0

    #setter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIsAnimating:Z
    invoke-static {v11, v12}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$502(Lcom/nemustech/tiffany/widget/TFAnimatedListView;Z)Z

    .line 1118
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimationListener:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;
    invoke-static {v11}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$600(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 1119
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimationListener:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;
    invoke-static {v11}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$600(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;

    move-result-object v11

    invoke-interface {v11}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;->OnItemAnimationStop()V

    goto :goto_4
.end method

.method public start()V
    .locals 2

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    const/4 v1, 0x1

    #setter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$502(Lcom/nemustech/tiffany/widget/TFAnimatedListView;Z)Z

    .line 1034
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1035
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->run()V

    .line 1037
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIsAnimating:Z
    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$500(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimationListener:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$600(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimationListener:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$600(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;->OnItemAnimationStart()V

    .line 1041
    :cond_0
    return-void
.end method
