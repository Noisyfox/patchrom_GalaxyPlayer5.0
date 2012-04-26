.class final Lcom/miui/camera/ui/VerticalProgressBar$SavedState$1;
.super Ljava/lang/Object;
.source "VerticalProgressBar.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/camera/ui/VerticalProgressBar$SavedState;
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
        "Lcom/miui/camera/ui/VerticalProgressBar$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/camera/ui/VerticalProgressBar$SavedState;
    .locals 2
    .parameter "in"

    .prologue
    .line 544
    new-instance v0, Lcom/miui/camera/ui/VerticalProgressBar$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miui/camera/ui/VerticalProgressBar$SavedState;-><init>(Landroid/os/Parcel;Lcom/miui/camera/ui/VerticalProgressBar$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    invoke-virtual {p0, p1}, Lcom/miui/camera/ui/VerticalProgressBar$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/camera/ui/VerticalProgressBar$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/camera/ui/VerticalProgressBar$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 548
    new-array v0, p1, [Lcom/miui/camera/ui/VerticalProgressBar$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    invoke-virtual {p0, p1}, Lcom/miui/camera/ui/VerticalProgressBar$SavedState$1;->newArray(I)[Lcom/miui/camera/ui/VerticalProgressBar$SavedState;

    move-result-object v0

    return-object v0
.end method
