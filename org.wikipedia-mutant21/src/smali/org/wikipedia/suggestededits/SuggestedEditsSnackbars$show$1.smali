.class final Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$show$1;
.super Ljava/lang/Object;
.source "SuggestedEditsSnackbars.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->show(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;ZLjava/lang/String;ZLorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $listener:Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$show$1;->$listener:Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$show$1;->$listener:Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;

    invoke-interface {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;->open()V

    return-void
.end method
