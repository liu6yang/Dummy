using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class testInputField : MonoBehaviour {

    // Use this for initialization
    InputField input;
    void Start () {
        input = gameObject.GetComponent<InputField>();
        //input.ActivateInputField();
        StartCoroutine("ToEnd", input);
        //input.MoveTextEnd(false);
        //input.caretPosition = input.text.Length;
    }

    IEnumerator ToEnd(InputField input)
    {
        yield return new WaitForSeconds(0.5f);
        input.MoveTextEnd(false);
    }

    public void OnValueChange(string str)
    {
        Debug.LogError(str);
    }

    public void OnEndEdit(string str)
    {
        input.lineType = InputField.LineType.MultiLineSubmit;
    }

    // Update is called once per frame
    void Update () {
	
	}
}
