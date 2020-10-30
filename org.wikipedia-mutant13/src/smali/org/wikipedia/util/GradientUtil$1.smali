.class final Lorg/wikipedia/util/GradientUtil$1;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "GradientUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/util/GradientUtil;->setPowerGradient(Landroid/graphics/drawable/PaintDrawable;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$stopColors:[I

.field final synthetic val$x0:F

.field final synthetic val$x1:F

.field final synthetic val$y0:F

.field final synthetic val$y1:F


# direct methods
.method constructor <init>(FFFF[I)V
    .locals 0

    .line 89
    iput p1, p0, Lorg/wikipedia/util/GradientUtil$1;->val$x0:F

    iput p2, p0, Lorg/wikipedia/util/GradientUtil$1;->val$y0:F

    iput p3, p0, Lorg/wikipedia/util/GradientUtil$1;->val$x1:F

    iput p4, p0, Lorg/wikipedia/util/GradientUtil$1;->val$y1:F

    iput-object p5, p0, Lorg/wikipedia/util/GradientUtil$1;->val$stopColors:[I

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)Landroid/graphics/Shader;
    .locals 9

    .line 92
    new-instance v8, Landroid/graphics/LinearGradient;

    int-to-float p1, p1

    iget v0, p0, Lorg/wikipedia/util/GradientUtil$1;->val$x0:F

    mul-float v1, p1, v0

    int-to-float p2, p2

    iget v0, p0, Lorg/wikipedia/util/GradientUtil$1;->val$y0:F

    mul-float v2, p2, v0

    iget v0, p0, Lorg/wikipedia/util/GradientUtil$1;->val$x1:F

    mul-float v3, p1, v0

    iget p1, p0, Lorg/wikipedia/util/GradientUtil$1;->val$y1:F

    mul-float v4, p2, p1

    iget-object v5, p0, Lorg/wikipedia/util/GradientUtil$1;->val$stopColors:[I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v8
.end method
