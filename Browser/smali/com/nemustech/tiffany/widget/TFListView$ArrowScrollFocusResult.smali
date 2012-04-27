.class Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;
.super Ljava/lang/Object;
.source "TFListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrowScrollFocusResult"
.end annotation


# instance fields
.field private mAmountToScroll:I

.field private mSelectedPosition:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nemustech/tiffany/widget/TFListView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2614
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmountToScroll()I
    .locals 1

    .prologue
    .line 2631
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;->mAmountToScroll:I

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 2627
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;->mSelectedPosition:I

    return v0
.end method

.method populate(II)V
    .locals 0
    .parameter "selectedPosition"
    .parameter "amountToScroll"

    .prologue
    .line 2622
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;->mSelectedPosition:I

    .line 2623
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;->mAmountToScroll:I

    .line 2624
    return-void
.end method
