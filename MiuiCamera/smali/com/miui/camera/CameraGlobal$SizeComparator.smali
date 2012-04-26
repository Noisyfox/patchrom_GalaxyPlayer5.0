.class public Lcom/miui/camera/CameraGlobal$SizeComparator;
.super Ljava/lang/Object;
.source "CameraGlobal.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/camera/CameraGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SizeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/camera/CameraGlobal;


# direct methods
.method public constructor <init>(Lcom/miui/camera/CameraGlobal;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/miui/camera/CameraGlobal$SizeComparator;->this$0:Lcom/miui/camera/CameraGlobal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 3
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 229
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/hardware/Camera$Size;->height:I

    iget v1, p2, Landroid/hardware/Camera$Size;->height:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 233
    :goto_0
    return v0

    .line 230
    :cond_0
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget v1, p1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v1

    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    iget v2, p2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    .line 231
    const/4 v0, -0x1

    goto :goto_0

    .line 233
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 227
    check-cast p1, Landroid/hardware/Camera$Size;

    .end local p1
    check-cast p2, Landroid/hardware/Camera$Size;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/camera/CameraGlobal$SizeComparator;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result v0

    return v0
.end method
