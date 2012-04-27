.class public abstract Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
.super Ljava/lang/Object;
.source "TFAnimatedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAnimatedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemAnimation"
.end annotation


# instance fields
.field private mRetainOnFinish:Z

.field private mType:I


# direct methods
.method protected constructor <init>(IZ)V
    .locals 1
    .parameter "type"
    .parameter "retainOnFinish"

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->mRetainOnFinish:Z

    .line 152
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->mType:I

    .line 153
    iput-boolean p2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->mRetainOnFinish:Z

    .line 154
    return-void
.end method


# virtual methods
.method public abstract computeAnimation(J)V
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 0
    .parameter "canvas"
    .parameter "child"

    .prologue
    .line 219
    return-void
.end method

.method public getRetainOnFinish()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->mRetainOnFinish:Z

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->mType:I

    return v0
.end method

.method public abstract isFinished()Z
.end method
