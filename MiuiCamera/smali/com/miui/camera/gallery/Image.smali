.class public Lcom/miui/camera/gallery/Image;
.super Lcom/miui/camera/gallery/BaseImage;
.source "Image.java"

# interfaces
.implements Lcom/miui/camera/gallery/IImage;


# instance fields
.field private final mRotation:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;JLandroid/net/Uri;JJI)V
    .locals 0
    .parameter "cr"
    .parameter "id"
    .parameter "uri"
    .parameter "miniThumbMagic"
    .parameter "dateTaken"
    .parameter "rotation"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p8}, Lcom/miui/camera/gallery/BaseImage;-><init>(Landroid/content/ContentResolver;JLandroid/net/Uri;JJ)V

    .line 21
    iput p9, p0, Lcom/miui/camera/gallery/Image;->mRotation:I

    .line 22
    return-void
.end method


# virtual methods
.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/miui/camera/gallery/Image;->mRotation:I

    return v0
.end method
