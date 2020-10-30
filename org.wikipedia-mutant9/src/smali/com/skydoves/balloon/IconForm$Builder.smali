.class public final Lcom/skydoves/balloon/IconForm$Builder;
.super Ljava/lang/Object;
.source "IconForm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skydoves/balloon/IconForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIconForm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconForm.kt\ncom/skydoves/balloon/IconForm$Builder\n*L\n1#1,94:1\n*E\n"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field public drawable:Landroid/graphics/drawable/Drawable;

.field public drawableRes:Ljava/lang/Integer;

.field public iconColor:I

.field public iconGravity:Lcom/skydoves/balloon/IconGravity;

.field public iconSize:I

.field public iconSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/skydoves/balloon/IconForm$Builder;->context:Landroid/content/Context;

    .line 57
    sget-object v0, Lcom/skydoves/balloon/IconGravity;->LEFT:Lcom/skydoves/balloon/IconGravity;

    iput-object v0, p0, Lcom/skydoves/balloon/IconForm$Builder;->iconGravity:Lcom/skydoves/balloon/IconGravity;

    const/16 v0, 0x1c

    .line 59
    invoke-static {p1, v0}, Lcom/skydoves/balloon/extensions/ContextExtensionKt;->dp2Px(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/skydoves/balloon/IconForm$Builder;->iconSize:I

    .line 61
    iget-object p1, p0, Lcom/skydoves/balloon/IconForm$Builder;->context:Landroid/content/Context;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/skydoves/balloon/extensions/ContextExtensionKt;->dp2Px(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/skydoves/balloon/IconForm$Builder;->iconSpace:I

    const/4 p1, -0x1

    .line 63
    iput p1, p0, Lcom/skydoves/balloon/IconForm$Builder;->iconColor:I

    return-void
.end method


# virtual methods
.method public final build()Lcom/skydoves/balloon/IconForm;
    .locals 1

    .line 91
    new-instance v0, Lcom/skydoves/balloon/IconForm;

    invoke-direct {v0, p0}, Lcom/skydoves/balloon/IconForm;-><init>(Lcom/skydoves/balloon/IconForm$Builder;)V

    return-object v0
.end method

.method public final setDrawable(Landroid/graphics/drawable/Drawable;)Lcom/skydoves/balloon/IconForm$Builder;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/skydoves/balloon/IconForm$Builder;->drawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final setDrawableGravity(Lcom/skydoves/balloon/IconGravity;)Lcom/skydoves/balloon/IconForm$Builder;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/skydoves/balloon/IconForm$Builder;->iconGravity:Lcom/skydoves/balloon/IconGravity;

    return-object p0
.end method

.method public final setIconColor(I)Lcom/skydoves/balloon/IconForm$Builder;
    .locals 0

    .line 84
    iput p1, p0, Lcom/skydoves/balloon/IconForm$Builder;->iconColor:I

    return-object p0
.end method

.method public final setIconSize(I)Lcom/skydoves/balloon/IconForm$Builder;
    .locals 0

    .line 78
    iput p1, p0, Lcom/skydoves/balloon/IconForm$Builder;->iconSize:I

    return-object p0
.end method

.method public final setIconSpace(I)Lcom/skydoves/balloon/IconForm$Builder;
    .locals 0

    .line 81
    iput p1, p0, Lcom/skydoves/balloon/IconForm$Builder;->iconSpace:I

    return-object p0
.end method
