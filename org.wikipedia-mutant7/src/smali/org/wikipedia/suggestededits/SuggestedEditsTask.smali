.class public final Lorg/wikipedia/suggestededits/SuggestedEditsTask;
.super Ljava/lang/Object;
.source "SuggestedEditsTask.kt"


# instance fields
.field private description:Ljava/lang/String;

.field private disabled:Z

.field private imageDrawable:I

.field private new:Z

.field private title:Ljava/lang/String;

.field private translatable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->translatable:Z

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisabled()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->disabled:Z

    return v0
.end method

.method public final getImageDrawable()I
    .locals 1

    .line 12
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->imageDrawable:I

    return v0
.end method

.method public final getNew()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->new:Z

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTranslatable()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->translatable:Z

    return v0
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->description:Ljava/lang/String;

    return-void
.end method

.method public final setDisabled(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->disabled:Z

    return-void
.end method

.method public final setImageDrawable(I)V
    .locals 0

    .line 12
    iput p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->imageDrawable:I

    return-void
.end method

.method public final setNew(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->new:Z

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->title:Ljava/lang/String;

    return-void
.end method

.method public final setTranslatable(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->translatable:Z

    return-void
.end method
