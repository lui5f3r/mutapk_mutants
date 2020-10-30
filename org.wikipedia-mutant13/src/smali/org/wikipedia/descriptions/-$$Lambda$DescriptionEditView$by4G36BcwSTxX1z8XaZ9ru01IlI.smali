.class public final synthetic Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditView$by4G36BcwSTxX1z8XaZ9ru01IlI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/descriptions/DescriptionEditView;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditView$by4G36BcwSTxX1z8XaZ9ru01IlI;->f$0:Lorg/wikipedia/descriptions/DescriptionEditView;

    iput-object p2, p0, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditView$by4G36BcwSTxX1z8XaZ9ru01IlI;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditView$by4G36BcwSTxX1z8XaZ9ru01IlI;->f$0:Lorg/wikipedia/descriptions/DescriptionEditView;

    iget-object v1, p0, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditView$by4G36BcwSTxX1z8XaZ9ru01IlI;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->lambda$setHighlightText$3$DescriptionEditView(Ljava/lang/String;)V

    return-void
.end method
