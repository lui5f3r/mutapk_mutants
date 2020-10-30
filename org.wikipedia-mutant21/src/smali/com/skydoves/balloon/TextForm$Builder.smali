.class public final Lcom/skydoves/balloon/TextForm$Builder;
.super Ljava/lang/Object;
.source "TextForm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skydoves/balloon/TextForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextForm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextForm.kt\ncom/skydoves/balloon/TextForm$Builder\n*L\n1#1,112:1\n*E\n"
.end annotation


# instance fields
.field public text:Ljava/lang/CharSequence;

.field public textColor:I

.field public textGravity:I

.field public textIsHtml:Z

.field public textSize:F

.field public textTypeface:I

.field public textTypefaceObject:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 56
    iput-object p1, p0, Lcom/skydoves/balloon/TextForm$Builder;->text:Ljava/lang/CharSequence;

    const/high16 p1, 0x41400000    # 12.0f

    .line 59
    iput p1, p0, Lcom/skydoves/balloon/TextForm$Builder;->textSize:F

    const/4 p1, -0x1

    .line 62
    iput p1, p0, Lcom/skydoves/balloon/TextForm$Builder;->textColor:I

    const/16 p1, 0x11

    .line 74
    iput p1, p0, Lcom/skydoves/balloon/TextForm$Builder;->textGravity:I

    return-void
.end method


# virtual methods
.method public final build()Lcom/skydoves/balloon/TextForm;
    .locals 1

    .line 109
    new-instance v0, Lcom/skydoves/balloon/TextForm;

    invoke-direct {v0, p0}, Lcom/skydoves/balloon/TextForm;-><init>(Lcom/skydoves/balloon/TextForm$Builder;)V

    return-object v0
.end method

.method public final setText(Ljava/lang/CharSequence;)Lcom/skydoves/balloon/TextForm$Builder;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lcom/skydoves/balloon/TextForm$Builder;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setTextColor(I)Lcom/skydoves/balloon/TextForm$Builder;
    .locals 0

    .line 88
    iput p1, p0, Lcom/skydoves/balloon/TextForm$Builder;->textColor:I

    return-object p0
.end method

.method public final setTextGravity(I)Lcom/skydoves/balloon/TextForm$Builder;
    .locals 0

    .line 106
    iput p1, p0, Lcom/skydoves/balloon/TextForm$Builder;->textGravity:I

    return-object p0
.end method

.method public final setTextIsHtml(Z)Lcom/skydoves/balloon/TextForm$Builder;
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/skydoves/balloon/TextForm$Builder;->textIsHtml:Z

    return-object p0
.end method

.method public final setTextSize(F)Lcom/skydoves/balloon/TextForm$Builder;
    .locals 0

    .line 85
    iput p1, p0, Lcom/skydoves/balloon/TextForm$Builder;->textSize:F

    return-object p0
.end method

.method public final setTextTypeface(I)Lcom/skydoves/balloon/TextForm$Builder;
    .locals 0

    .line 99
    iput p1, p0, Lcom/skydoves/balloon/TextForm$Builder;->textTypeface:I

    return-object p0
.end method

.method public final setTextTypeface(Landroid/graphics/Typeface;)Lcom/skydoves/balloon/TextForm$Builder;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/skydoves/balloon/TextForm$Builder;->textTypefaceObject:Landroid/graphics/Typeface;

    return-object p0
.end method
