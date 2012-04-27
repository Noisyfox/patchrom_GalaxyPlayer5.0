.class final Lcom/nemustech/tiffany/widget/TFListView$SavedState$1;
.super Ljava/lang/Object;
.source "TFListView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFListView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/nemustech/tiffany/widget/TFListView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/nemustech/tiffany/widget/TFListView$SavedState;
    .locals 2
    .parameter "in"

    .prologue
    .line 4151
    new-instance v0, Lcom/nemustech/tiffany/widget/TFListView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/nemustech/tiffany/widget/TFListView$SavedState;-><init>(Landroid/os/Parcel;Lcom/nemustech/tiffany/widget/TFListView$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4149
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/nemustech/tiffany/widget/TFListView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/nemustech/tiffany/widget/TFListView$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 4155
    new-array v0, p1, [Lcom/nemustech/tiffany/widget/TFListView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4149
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView$SavedState$1;->newArray(I)[Lcom/nemustech/tiffany/widget/TFListView$SavedState;

    move-result-object v0

    return-object v0
.end method
