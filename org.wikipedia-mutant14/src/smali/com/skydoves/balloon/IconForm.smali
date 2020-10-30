.class public final Lcom/skydoves/balloon/IconForm;
.super Ljava/lang/Object;
.source "IconForm.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/skydoves/balloon/IconForm$Builder;
    }
.end annotation


# instance fields
.field private final drawable:Landroid/graphics/drawable/Drawable;

.field private drawableRes:Ljava/lang/Integer;

.field private final iconColor:I

.field private final iconGravity:Lcom/skydoves/balloon/IconGravity;

.field private final iconSize:I

.field private final iconSpace:I


# direct methods
.method public constructor <init>(Lcom/skydoves/balloon/IconForm$Builder;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget-object v0, p1, Lcom/skydoves/balloon/IconForm$Builder;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/skydoves/balloon/IconForm;->drawable:Landroid/graphics/drawable/Drawable;

    .line 43
    iget-object v0, p1, Lcom/skydoves/balloon/IconForm$Builder;->drawableRes:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/skydoves/balloon/IconForm;->drawableRes:Ljava/lang/Integer;

    .line 44
    iget-object v0, p1, Lcom/skydoves/balloon/IconForm$Builder;->iconGravity:Lcom/skydoves/balloon/IconGravity;

    iput-object v0, p0, Lcom/skydoves/balloon/IconForm;->iconGravity:Lcom/skydoves/balloon/IconGravity;

    .line 45
    iget v0, p1, Lcom/skydoves/balloon/IconForm$Builder;->iconSize:I

    iput v0, p0, Lcom/skydoves/balloon/IconForm;->iconSize:I

    .line 46
    iget v0, p1, Lcom/skydoves/balloon/IconForm$Builder;->iconSpace:I

    iput v0, p0, Lcom/skydoves/balloon/IconForm;->iconSpace:I

    .line 47
    iget p1, p1, Lcom/skydoves/balloon/IconForm$Builder;->iconColor:I

    iput p1, p0, Lcom/skydoves/balloon/IconForm;->iconColor:I

    return-void
.end method


# virtual methods
.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/skydoves/balloon/IconForm;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getDrawableRes()Ljava/lang/Integer;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/skydoves/balloon/IconForm;->drawableRes:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIconColor()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/skydoves/balloon/IconForm;->iconColor:I

    return v0
.end method

.method public final getIconGravity()Lcom/skydoves/balloon/IconGravity;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/skydoves/balloon/IconForm;->iconGravity:Lcom/skydoves/balloon/IconGravity;

    return-object v0
.end method

.method public final getIconSize()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/skydoves/balloon/IconForm;->iconSize:I

    return v0
.end method

.method public final getIconSpace()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/skydoves/balloon/IconForm;->iconSpace:I

    return v0
.end method
