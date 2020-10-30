.class Lorg/wikipedia/edit/EditSectionActivity$SectionTextWatcher;
.super Ljava/lang/Object;
.source "EditSectionActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/edit/EditSectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SectionTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/edit/EditSectionActivity;


# direct methods
.method private constructor <init>(Lorg/wikipedia/edit/EditSectionActivity;)V
    .locals 0

    .line 733
    iput-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity$SectionTextWatcher;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/edit/EditSectionActivity;Lorg/wikipedia/edit/EditSectionActivity$1;)V
    .locals 0

    .line 733
    invoke-direct {p0, p1}, Lorg/wikipedia/edit/EditSectionActivity$SectionTextWatcher;-><init>(Lorg/wikipedia/edit/EditSectionActivity;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 744
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity$SectionTextWatcher;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    invoke-static {p1}, Lorg/wikipedia/edit/EditSectionActivity;->access$500(Lorg/wikipedia/edit/EditSectionActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 745
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity$SectionTextWatcher;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/wikipedia/edit/EditSectionActivity;->access$502(Lorg/wikipedia/edit/EditSectionActivity;Z)Z

    return-void

    .line 748
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity$SectionTextWatcher;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    invoke-static {p1}, Lorg/wikipedia/edit/EditSectionActivity;->access$600(Lorg/wikipedia/edit/EditSectionActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 749
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity$SectionTextWatcher;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/wikipedia/edit/EditSectionActivity;->access$602(Lorg/wikipedia/edit/EditSectionActivity;Z)Z

    .line 751
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity$SectionTextWatcher;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
