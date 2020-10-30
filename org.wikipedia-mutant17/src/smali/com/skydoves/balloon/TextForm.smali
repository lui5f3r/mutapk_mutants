.class public final Lcom/skydoves/balloon/TextForm;
.super Ljava/lang/Object;
.source "TextForm.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/skydoves/balloon/TextForm$Builder;
    }
.end annotation


# instance fields
.field private final text:Ljava/lang/CharSequence;

.field private final textColor:I

.field private final textGravity:I

.field private final textIsHtml:Z

.field private final textSize:F

.field private final textStyle:I

.field private final textTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcom/skydoves/balloon/TextForm$Builder;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-object v0, p1, Lcom/skydoves/balloon/TextForm$Builder;->text:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/skydoves/balloon/TextForm;->text:Ljava/lang/CharSequence;

    .line 45
    iget v0, p1, Lcom/skydoves/balloon/TextForm$Builder;->textSize:F

    iput v0, p0, Lcom/skydoves/balloon/TextForm;->textSize:F

    .line 46
    iget v0, p1, Lcom/skydoves/balloon/TextForm$Builder;->textColor:I

    iput v0, p0, Lcom/skydoves/balloon/TextForm;->textColor:I

    .line 47
    iget-boolean v0, p1, Lcom/skydoves/balloon/TextForm$Builder;->textIsHtml:Z

    iput-boolean v0, p0, Lcom/skydoves/balloon/TextForm;->textIsHtml:Z

    .line 48
    iget v0, p1, Lcom/skydoves/balloon/TextForm$Builder;->textTypeface:I

    iput v0, p0, Lcom/skydoves/balloon/TextForm;->textStyle:I

    .line 49
    iget-object v0, p1, Lcom/skydoves/balloon/TextForm$Builder;->textTypefaceObject:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/skydoves/balloon/TextForm;->textTypeface:Landroid/graphics/Typeface;

    .line 50
    iget p1, p1, Lcom/skydoves/balloon/TextForm$Builder;->textGravity:I

    iput p1, p0, Lcom/skydoves/balloon/TextForm;->textGravity:I

    return-void
.end method


# virtual methods
.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/skydoves/balloon/TextForm;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextColor()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/skydoves/balloon/TextForm;->textColor:I

    return v0
.end method

.method public final getTextGravity()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/skydoves/balloon/TextForm;->textGravity:I

    return v0
.end method

.method public final getTextIsHtml()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/skydoves/balloon/TextForm;->textIsHtml:Z

    return v0
.end method

.method public final getTextSize()F
    .locals 1

    .line 45
    iget v0, p0, Lcom/skydoves/balloon/TextForm;->textSize:F

    return v0
.end method

.method public final getTextStyle()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/skydoves/balloon/TextForm;->textStyle:I

    return v0
.end method

.method public final getTextTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/skydoves/balloon/TextForm;->textTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method
